import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/shape_first.svg'),
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Color(0xffFCF8F2),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.cancel),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xffFCF8F2))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Categories"),
                    Text("SeeAll")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
