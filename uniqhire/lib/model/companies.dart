// ignore_for_file: unused_import

import "package:flutter/material.dart";

class Company {
  final String image;
  final String name;
  final String desc;
  final String hiring;

  Company({required this.image, required this.name, required this.desc, required this.hiring});
}

final List<Company> companies = [
  Company(
    image: "assets/electronics.jpg", 
    name: "Electronics", 
    desc: "Welcome to our electronics emporium, where innovation meets affordability! At our shop, you'll find a curated selection of the latest gadgets, devices, and accessories to elevate your digital lifestyle. From cutting-edge smartphones and sleek laptops to state-of-the-art audio equipment and smart home solutions, we've got everything you need to stay connected and entertained.", 
    hiring: "Amputee"),

  Company(
    image: "assets/beautysalon.jpg", 
    name: "Beauty Salon", 
    desc: "Welcome to our boutique clothing store, where style meets comfort and sophistication! Step into a world of fashion-forward trends and timeless classics that cater to your individuality and sense of style. From casual chic to elegant formalwear, our collection features handpicked pieces that exude quality craftsmanship and attention to detail.", 
    hiring: "Speech Disorders"),

  Company(
    image: "assets/homedecor.jpg", 
    name: "Home Decor", 
    desc: "Welcome to our home decor haven, where every corner tells a story and every room reflects your unique personality! Step into a world of design inspiration and discover an eclectic array of furnishings, accents, and decor pieces that will transform your space into a sanctuary of style and comfort. From contemporary minimalist aesthetics to rustic charm and everything in between, our curated collection offers something for every taste and home decor preference.", 
    hiring: "Amputee"),

  Company(
    image: "assets/sportscenter.jpg", 
    name: "Sports Center", 
    desc: "Welcome to our sports center, where the pursuit of fitness and the thrill of competition come together to inspire greatness! Step into our state-of-the-art facility and embark on a journey to elevate your athleticism, improve your health, and unleash your inner champion.", 
    hiring: "ADHD"),
];