import 'package:flutter/material.dart';
import 'package:pet_shop/pet_shop/home.dart';
import 'package:pet_shop/pet_shop/splash.dart';
import 'package:pet_shop/pet_shop/categories.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main(){
  runApp(ResponsiveSizer(
    builder: (context,orientation, screenType) {
      return const MaterialApp(
        home: Home(),
      );
    }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
