// class 8.2 List view, Grid view, Size box, ListTile,Divider
import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: 'IntroApp',
      themeMode: ThemeMode.dark,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> FriendList = [
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.grey,
      ),
      /*     body: ListView(
        scrollDirection: Axis.vertical,
          children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text('Box 1'),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text('Box 1'),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text('Box 1'),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text('Box 1'),
                  ),
                ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),              SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),              SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),              SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),              SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),              SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box 1'),
              ),
            ),





          ],

      ), */

      /*   body: ListView.builder(
        itemCount: 1000, // 0-999
        itemBuilder: (contex, index){
          return SizedBox(
            width: 100,
            height: 100,
            child: Center(child: Text(index.toString())),
          );

        },
      ), */
      /*  body: ListView.builder(
        itemCount:FriendList.length,
     //   scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Text(FriendList[index]);
        },
      ), */
    /*  body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 4,
            childAspectRatio: 1),
        itemCount: FriendList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(index.toString()),
              Text(FriendList[index]),
            ],
          );
        },
      ), */

   /*   body: ListView.separated(
        itemCount: FriendList.length,
        itemBuilder: (contex, index){
          return Column(
          children: [
            Text(FriendList[index]),
          ],
          );
        },
      separatorBuilder: (context, index){
          return Divider(
            height: 20,
            color: Colors.red,
            thickness: 2,
            endIndent: 15,
            indent: 4,
          );
          return Text('This is $index separator');
      },
      ), */
      body: ListView.separated(
        itemCount: FriendList.length,
        itemBuilder: (contex, index){
          return ListTile(
            tileColor: Colors.grey,

           title:    Text(FriendList[index]),
            subtitle: Text('School Friend'),
            //   trailing: Icon((Icons.add)),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.do_not_disturb_on_total_silence, color: Colors.green, size: 10,),
                Text('Active')
              ],
            ),
            leading: Text((index+1).toString()),
            onTap: (){
             print('$index item is tapped');
            },
            titleTextStyle:  TextStyle(
              fontSize: 40,
              color: Colors.red,
            ),

          );
        },
        separatorBuilder: (context, index){
          return Divider(
            height: 20,
            color: Colors.red,
            thickness: 2,
            endIndent: 15,
            indent: 4,
          );
          return Text('This is $index separator');
        },
      ),

    );
  }
}
