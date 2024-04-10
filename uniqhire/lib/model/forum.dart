import 'package:flutter/material.dart';

class Forum {
  final String name;
  final String message;

  Forum({required this.name, required this.message});
}

final List<Forum> forums = [
  Forum(
    name: "Lance", 
    message: "I'm grateful for your guidance and wisdom. Your advice has helped me navigate through difficult times."),

  Forum(
    name: "Evryl", 
    message: "I'm incredibly grateful for the kindness you've shown me. Thank you!"),

  Forum(
    name: "Pearkie", 
    message: "Thank you for believing in me, even when I doubted myself. Your faith in me has given me the confidence to pursue my dreams."),

  Forum(
    name: "France", 
    message: "I'm grateful for the memories we've created together. Here's to many more adventures and shared moments!"),
];