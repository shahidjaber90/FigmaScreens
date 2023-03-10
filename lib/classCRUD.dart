import 'package:flutter/material.dart';

class CrudOperations extends StatefulWidget {
  const CrudOperations({super.key});

  @override
  State<CrudOperations> createState() => _CrudOperationsState();
}

class _CrudOperationsState extends State<CrudOperations> {
  TextEditingController contactName = TextEditingController();
  List contacts = [
    {'name': 'shahid', 'username': 'Jaber@gmail.com', 'number': '03121186020'},
    {'name': 'jaber', 'username': 'Jaber@gmail.com', 'number': '03121186020'},
    {'name': 'shan', 'username': 'Jaber@gmail.com', 'number': '03121186020'},
    {'name': 'faizan', 'username': 'Jaber@gmail.com', 'number': '03121186020'},
  ];

  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      contacts.add({
        "name": contactName.text,
        "userName": "codewithowais",
        "number": "0300-0000000",
      });
      contactName.clear();
    });
  }

  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      contacts[index] = {
        "name": contactName.text,
        "userName": "codewithowais",
        "number": "0300-0000000",
      };
      contactName.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, i) {
          return ListTile(
              title: Text("${contacts[i]['name']}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      contactName.text = contacts[i]['name'];
                      showDialog(
                        // barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("My title"),
                            content: TextField(
                              controller: contactName,
                              obscureText: false,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Contact Edit',
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  editContact(context, i);
                                },
                              )
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        contacts.removeAt(i);
                      });
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            // barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("My title"),
                content: TextField(
                  controller: contactName,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contact Name',
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      addNewContact(context);
                    },
                  )
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
