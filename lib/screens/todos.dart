import 'package:flutter/material.dart';

class Todos extends StatefulWidget {
  // const Todos({ Key? key }) : super(key: key);

  @override
  _TodosState createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  List<dynamic> todos = ["hi ", "breakfast", "123"];
  var outputt = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          shrinkWrap: true,
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return Container(
              // BoxFit:BoxFit.fill
                decoration: BoxDecoration(),
      
                // width: MediaQuery.of(context).size.width * .85,
                height: 50,
                color: Colors.amberAccent,
                child: ListTile(
                  title: Text("${todos[index]}"),
                  trailing: Container(
                   
                    width: 40,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Update"),
                                      content: TextField(onChanged: (value) {
                                        outputt = value;
                                      }),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                todos.replaceRange(
                                                    index, index + 1, {
                                                  outputt
                                                }); // here we use curly braces for convert outputt to dynamic otherwise it throw an error
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Update"))
                                      ],
                                    );
                                  });
                            },
                            child: Icon(Icons.edit)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                todos.removeAt(index);
                              });
                            },
                            child: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("NewTask"),
                    content: TextField(onChanged: (value) {
                      outputt = value;
                    }),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              todos.add(outputt);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Add"))
                    ],
                  );
                });
          },
          child: Text("Add"),
        ),
      ),
    );
  }
}
