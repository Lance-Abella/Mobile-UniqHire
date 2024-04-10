// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:uniqhire/model/agencies.dart';

class AgencyDetails extends StatelessWidget {
  final Agency agency;

  const AgencyDetails({super.key, required this.agency});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 241),
      body: Stack(
        children: [
          Image(
            image: AssetImage(agency.image),
            width: 400,
            height: 338,
            fit: BoxFit.contain,
            ),

          Center(
            child: Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),              
              height: 100,
              width: 320,
              margin: EdgeInsets.only(bottom: 90),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      agency.name,                      
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              
                    SizedBox(height: 10),

                    

                   
                  ],
                ),
              )
            ),
          ),

           Center(
             child: Container(
              margin: EdgeInsets.only(bottom: 85, left: 220),
              decoration: BoxDecoration(
                color: Color(0xff76453B),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 50,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    "assets/minimize.png",                  
                    ),
                    width: 25,
                    height: 25,
                    fit: BoxFit.contain,
                    ),
              ),
                     ),
           ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 70, right: 280),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("assets/foot.png"),
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                  ),
              ),
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 75, right: 170),
              child: Text(
                "About",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,            
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 450),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  agency.desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400, 
                    color: Colors.black,           
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}