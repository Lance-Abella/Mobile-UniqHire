// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Agency {
  final String name;
  final String image;
  final String desc;

  Agency({required this.name, required this.image, required this.desc});
  
}

final List<Agency> agencies = [
  Agency(
    name: "Autism Society Philippines", 
    image: "assets/ASP.png", 
    desc: "The Autism Society Philippines (ASP) is a national, non-profit organization dedicated to the well-being of persons on the autism spectrum disorder. We envision a society where Filipinos on the spectrum become the best of their potentials -- self-reliant, independent, productive, socially-accepted citizens of an Autism-OK Philippines."),

  Agency(
    name: "Goodwill Philippines", 
    image: "assets/GP.png", 
    desc: "Goodwill Philippines is a non-son-stock, non-profit civic organization committed to the rehabilitation of persons with disabilities (PWDs) and the disadvantaged through skill empowerment."),

  Agency(
    name: "National Council on Disability Affairs", 
    image: "assets/NCDA.png", 
    desc: "The National Council on Disability Affairs (NCDA) is the national government agency mandated to formulate policies and coordinate the activities of all agencies, whether public or private, concerning disability issues and concerns. As such, the NCDA is the lead agency tasked to steer the course of program development for persons with disabilities and the delivery of services to the sector."),

  Agency(
    name: "Philippine Business and Disability Network", 
    image: "assets/PBDN.png", 
    desc: "Philippine Business and Disability Network (PBDN) is a platform for and by businesses that works towards more inclusive and barrier-free workplaces for Persons with Disability (PWDs)."),
];