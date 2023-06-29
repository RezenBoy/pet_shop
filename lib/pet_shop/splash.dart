import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_shop/pet_shop/home.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  final List <String> lst = [];
    List <String> lst1 = const ["abc"];


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home(lst)));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/home_shape1.svg'),
          Center(
            child: Image.asset(
              'assets/images/home_shape2.png',
              width: size.width * .7,
            ),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              'assets/images/home_shape2.svg',
            ),
          ),
        ],
      ),
    );
  }
}
