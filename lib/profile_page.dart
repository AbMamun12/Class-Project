import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Profile'),
          leading: Icon(CupertinoIcons.back),

        ),
        child: Center(

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('This is Cupertino Design System '),
              SizedBox(height: 14,),
              Icon(CupertinoIcons.airplane),
              SizedBox(height: 14,),
              CupertinoButton(child: Text('Click'), onPressed: (){}),
              SizedBox(height: 14,),
              CupertinoButton.filled(child: Text('Click'), onPressed: (){}),

            ],
          ),


              ),
        );
  }
}
