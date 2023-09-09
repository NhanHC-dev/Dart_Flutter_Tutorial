import 'package:flutter/material.dart';
import 'customButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
            title: const Text(
              'Select a Category',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
        ),
        body:  Column(
          children:  [
            CustomButton(
              buttonText: 'Random',
              icons: Icons.shuffle,
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.black,
            ),
            CustomButton(
              buttonText: 'Fashion',
              icons: Icons.shopping_bag_rounded,
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.black,
            ),
            CustomButton(
              buttonText: 'Life',
              icons: Icons.facebook,
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.black,

            ),
            CustomButton(
              buttonText: 'Love',
              icons: Icons.heart_broken_sharp,
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.black,
            ),
            CustomButton(
              buttonText: 'Sport',
              icons: Icons.sports,
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.black,
            ),

            // CustomButton(
            //   buttonText: 'Fashion',
            //   onPressed: () {
            //   // Do something when the button is pressed
            //   },
            //   buttonColor: Colors.white,
            //   textColor: Colors.black,
            // )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your code here
          },
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                title: const Text('Favourites'),
                onTap: () {
                  // Add your code here
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  // Add your code here
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.blue,
          onTap: (index) {
            // Add your code here
          },
        ),
      ),
    );
  }
}

