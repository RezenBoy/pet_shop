import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_shop/pet_shop/categories.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home(List<String> lst, {super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    hlo() {
      if (size.width < 751) {
        width:
        72.w;
        height:
        19.h;
      }
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/shape_first.svg'),
          Center(
            child: Image.asset(
              'assets/images/center_img.png',
              width: 76.w,
              height: 40.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp),
            child: Image.asset(
              // MediaQuery.of(context).size.width <= 750
              //     ? 'assets/images/text_down.png'
                   'assets/images/text_down.png',
              width: MediaQuery.of(context).size.width <= 750 ? 72.w : 356,
              height: MediaQuery.of(context).size.width <= 750 ? 19.h : 166,
              // scale: 2.dp,
              // 'assets/images/text_down.png',
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                  style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.4),
                  "Lorem ipsum dolor sit amet,\n"
                  "consectetur adipiscing elit. Diam\n"
                  "nunc et tincidunt ut. Vestibulum felis")),
          // Container(
          //   alignment: Alignment.bottomRight,
          //   decoration: BoxDecoration(border: Border(),color: Colors.black),
          //   child: InkWell(
          //     onTap: () {},
          //     child: Container(
          //       margin: EdgeInsets.all(20.sp),
          //       decoration: const BoxDecoration(
          //           shape: BoxShape.circle, color: Color(0xffFF7F48)),
          //       width: 21.w,
          //       child: Image.asset('assets/images/icon.png'),
          //     ),
          //   ),
          // ),
        ],
      ),
      floatingActionButton: Container(
        height: 40.sp,
        width: 40.sp,
        child: FloatingActionButton(
            child: Image.asset('assets/images/icon.png'),
            backgroundColor: Color(0xffFF7F48),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
            }),
      ),
    );
  }
}
