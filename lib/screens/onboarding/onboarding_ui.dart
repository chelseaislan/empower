// Ini lebih ke UI nya
import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderPage extends StatelessWidget {
  // 1 Declare parameters title, description, image
  // Nanti semua taro di onboarding, bagian list _pages
  final String sliderTitle, sliderDesc, sliderImg;
  const SliderPage({Key key, this.sliderTitle, this.sliderDesc, this.sliderImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 2 Declare width
    // Declare pasti dibawah curly bracket pertama
    double imgWidth = MediaQuery.of(context).size.width;
    return Container(
      color: lightGrey1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            sliderImg,
            width: imgWidth * 0.8,
          ),
          Text(
            sliderTitle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryBlack,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 5, 25, 20),
            child: Text(
              sliderDesc,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: secondBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
