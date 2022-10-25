// ignore_for_file: implementation_imports, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({super.key});

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  // ignore: prefer_final_fields
  List<String> _images = [
    'Images/1.png',
    'Images/2.png',
    'Images/3.png',
    'Images/4.png',
    'Images/5.png',
    'Images/6.png'
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _images[0],
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _images[1],
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _images[2],
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _images[3],
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _images[4],
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _images[5],
                fit: BoxFit.cover,
              ),
            ),
          ],
          options: CarouselOptions(
              aspectRatio: 1 / 1.4,
              viewportFraction: 0.7,
              reverse: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              enlargeCenterPage: true,
              pageSnapping: true),
        ),
      ),
    );
  }
}
