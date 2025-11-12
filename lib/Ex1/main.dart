import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('My Hobbies'),
        ),

        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
                title: 'Travelling',
                icon: Icons.travel_explore,
                backgroundColor: Colors.green,
              ),

              SizedBox(height: 10),

              HobbyCard(
                title: 'Skating',
                icon: Icons.skateboarding,
                backgroundColor: Colors.blueGrey,
              ),

              SizedBox(height: 10),
              
              HobbyCard(
                title: 'Exploring',
                icon: Icons.explore,
                backgroundColor: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),

            SizedBox(width: 20),
            
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}