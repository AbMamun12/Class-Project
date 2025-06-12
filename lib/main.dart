import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Navigator -> route to route

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfileScreen();
                }));
              },
              child: Text('Go to Profile'),
            ),
            SizedBox(height: 14),
            ElevatedButton(
              onPressed: () {
                //Navigator -> route to route

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingScreen();
                }));
              },
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Navigator -> route to route

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyHome();
                }));
              },
              child: Text('Go to My home'),
            ),
            SizedBox(height: 14,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text('Back')),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> const NewsFeed(isValidUser: true),
              ),
              );

            }, child: Text('Go to News Feed'))


          ],
        ),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomeScreen();
          }));

        }, icon: Icon(Icons.home)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to my Home'),
            SizedBox(height: 14,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text('Back'))
          ],

        ),
      ),
    );
  }
}

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.pink,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is my Setting Screen'),
        ],
      ),
    );
  }
}

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key, required this.isValidUser});
  final bool isValidUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valid User : $isValidUser'),
      ),
    );
  }
}

