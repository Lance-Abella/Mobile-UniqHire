// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../custom_design/textstyles.dart';
import '../model/forum.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Forum",
          style: TextStyles.appbarStyle,
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,


        leading: GestureDetector(
           onTap: () {
              // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CompanyScreen()));
            },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/backarrow-g.jpg'),
              height: 20,
              width: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),


        actions: [
          Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 37,
          child: Image(
            image: AssetImage('assets/3-dots.jpg'),
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        ],
      ),


      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: forums.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromARGB(255, 241, 244, 240),
            margin: EdgeInsets.all(10),
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    forums[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    forums[index].message,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Handle reply button press
                      },
                      child: Text(
                        "Reply",
                        style: TextStyle(
                          color: Color(0xff697960),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 241, 240, 240),
        onPressed: () {
          // Handle creating a new thread
        },
        child: Icon(Icons.add,
        color: Color.fromARGB(255, 85, 97, 77),),
        
      ),
    );
                }
         
  }
