import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: Colors.orange,
                  child: Center(child: Column(
                    children: [
                     Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(top: 45,
                      bottom:10,),
                      
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://www.rollingstone.com/wp-content/uploads/2022/11/taylor-swift-tour-dates-fan-wedding-plans.jpg?w=1581&h=1054&crop=1'
                        ),
                        fit: BoxFit.fill,
                        ),
                      ),

                     ),
                     Text('Taylor Swift',
                     style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                     ), 
                     ),
                     Text('taylor@gmail.com',
                     style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                     ), 
                     ), 
                    ],
                  )),
                ),
              ],
            ),
            
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Profile', style: TextStyle(fontSize: 18,),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings', style: TextStyle(fontSize: 18,),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: const Text('Logout', style: TextStyle(fontSize: 18,),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}
