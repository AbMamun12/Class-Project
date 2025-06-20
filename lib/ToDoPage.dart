import 'package:class_project/Style.dart';
import 'package:flutter/material.dart';
import 'package:class_project/Style.dart';

import 'Snackbar.dart';

class Todopage extends StatefulWidget {
  const Todopage({super.key});

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {
  List ToDOList = [];
  String item = "";
  TextEditingController itemController = TextEditingController();

  MyInputOnchange(content) {
    setState(() {
      item = content;
    });
  }

  AddItem() {
    setState(() {
      ToDOList.add({'item': item});
      itemController.clear(); // ✅ ফিল্ড মুছে ফেলবে
      item = ""; // চাইলে ভ্যালুও রিসেট করে দিতে পারো
    });
    ShowSuccessMessage(context, "Item added successfully");
  }

  ResetList() {
    setState(() {
      ToDOList.clear(); // সব টু-ডু আইটেম মুছে ফেলা
      itemController.clear(); // ইনপুট ফিল্ড খালি
      item = ""; // ভ্যালু রিসেট
    });
    ShowSuccessMessage(context, "Reset successfully");
  }

  RemoveItem(index) {
    setState(() {
      ToDOList.removeAt(index);
    });
    ShowSuccessMessage(context, "Item deleted successfully");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
      ),
/*
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  _TextFormField(),
                  _AddResetButtons(),
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: ToDOList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Sizebox50(Row(
                        children: [
                          Expanded(
                            flex: 80,
                            child: Text(ToDOList[index]['item'].toString()),
                          ),
                          Expanded(
                              flex: 30,
                              child: TextButton(
                                  onPressed: ()
                                    {RemoveItem(index);}
                                  , child: Icon(Icons.delete))),
                        ],
                      )),
                    );
                  }),
            ),
          ],
        ),
      ),
*/
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 70,
                      child: _TextFormField(),
                    ),
                    SizedBox(width: 10),
                    _AddResetButtons(), // ❌ এখানে Expanded দিয়ো না
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.6, // কিবোর্ড সমস্যা এড়াতে height fix
                  child: ListView.builder(
                    itemCount: ToDOList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Sizebox50(
                            Row(
                              children: [
                                // ✅ Circle Avatar
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Colors.green,
                                    child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),

                                // ✅ মূল টেক্সট
                                Expanded(
                                  flex: 80,
                                  child: Text(ToDOList[index]['item'].toString()),
                                ),

                                // ✅ ডিলিট বাটন
                                Expanded(
                                  flex: 30,
                                  child: TextButton(
                                    onPressed: () => RemoveItem(index),
                                    child: Icon(Icons.delete),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _AddResetButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {
            AddItem();
          },
          child: Text('Add'),
          style: AppButtonStyle(),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            ResetList();
          },
          child: Text('Reset'),
          style: AppButtonStyle().copyWith(
            backgroundColor: MaterialStatePropertyAll(Colors.red),
          ),
        ),
      ],
    );
  }

/*          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: ElevatedButton(
                onPressed: () {
                  ResetList(); // ✅ ক্লিক করলে সব মুছে যাবে
                },
                child: Text('Reset'),
                style: AppButtonStyle(), // চাইলে আলাদা রং দিতে পারো
              ),
            ),
          ),*/

  Expanded _TextFormField() {
    return Expanded(
      flex: 70,
      child: TextFormField(
        controller: itemController,
        onChanged: (content) {
          MyInputOnchange(content);
        },
        decoration: AppInputDecoration("List Item"),
      ),
    );
  }
}
