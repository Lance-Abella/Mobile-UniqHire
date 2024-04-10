// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
          },
        ),

        title: Image.asset(
          'assets/logo.png',
          height: 50, 
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 219, 227, 215),
        elevation: 0.0, 
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/homepage.png',
                fit: BoxFit.cover,
                height: 250,
                width: 320,
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.center,
            child: Text(
              "Find opportunity in Uniqhire!",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 87, 100, 80),
                fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.center,
            child: Text(
              "Welcome to Uniqhire, where every ability finds opportunity! Creating bridges to people with special needs, fostering inclusivity and celebrating diverse talents. Join us in building a world where everyone thrives!",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff697960),
                ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 40),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Color(0xff697960), width: 1), // Background color
                  ),
                  
                  child: Text('Explore'),
                ),
                SizedBox(width: 16), // Add space between buttons
                ElevatedButton(            
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff697960), // Background color
                  ),
                  child: Text('Train now',
                  
                  style: TextStyle(
                    color: Colors.white,
                    
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}