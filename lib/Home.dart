import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _DescriptionTEcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        //   backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                enabled: true,
                decoration: InputDecoration(
                  label: Text('Name'),
                  labelStyle: TextStyle(
                    //   fontSize: 23,
                    color: Colors.red,
                  ),
                  hintText: 'Enter Your Name',
                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                  icon: Icon(Icons.add),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: TextButton(
                    onPressed: () {},
                    child: Text('Search'),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: _DescriptionTEcontroller,
                enabled: true,
                maxLines: 5,
                maxLength: 200,
                /*    onTap: (){
                  print('Tapped on Textfield');
                }, */
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  label: Text('Description'),
                  labelStyle: TextStyle(
                    //    fontSize: 23,color: Colors.red,
                  ),
                  hintText: 'Enter Your description',
                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                enabled: true,
                onChanged: (String value) {
                  print(value);
                },
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Passward'),
                  labelStyle: TextStyle(
                    fontSize: 23,
                    color: Colors.red,
                  ),
                  hintText: 'Enter Your passward',
                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                ),
              ),
              TextButton(
                  onPressed: () {
                    //   _DescriptionTEcontroller.text='clear';
                    _DescriptionTEcontroller.clear();
                  },
                  child: Text('Clear Desription',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 23
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
