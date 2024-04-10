// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniqhire/provider/agencies_provider.dart';
import 'package:uniqhire/provider/companies_provider.dart';
import 'package:uniqhire/screens/agency_screen.dart';
import 'package:uniqhire/screens/company_screen.dart';
import 'package:uniqhire/screens/navbar.dart';

import 'provider/searchAgency_provider.dart';
import 'provider/searchCompany_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CompanyProvider()
        ),

        ChangeNotifierProvider(
          create: (context) => AgencyProvider()  
        ),

        ChangeNotifierProvider(
          create: (context) => SearchAgencyProvider() 
        ),

         ChangeNotifierProvider(
          create: (context) => SearchCompanyProvider() 
        ),        
      ],
      child: const MyApp()
      ), 
    );    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}

