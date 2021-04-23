// Ini lebih ke function dari UI nya
import 'package:flutter/material.dart';
import 'onboarding_ui.dart';
import 'package:fake_mpwr/colors.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // 3 Buat onboarding class
  // Bikin controller sama declare halaman pertama buat pageview
  PageController _pageController = PageController();
  int _currentPage = 0;

  // 4 Buat list dari scroll imagenya, ada 3 halaman (length 3)
  // Pake parameter dari slider
  List<Widget> _myPages = [
    SliderPage(
      sliderTitle: "Blazing internet speeds",
      sliderDesc: "Enjoy gaming all day with low latency and amazing speed!",
      sliderImg: "images/player.svg",
    ),
    SliderPage(
      sliderTitle: "Make it personal",
      sliderDesc:
          "Add various toppings on top of main quota to enjoy social media!",
      sliderImg: "images/mobile.svg",
    ),
    SliderPage(
      sliderTitle: "Are you ready?",
      sliderDesc: "Continue to register your new card!",
      sliderImg: "images/bike.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // 5 Buat stack yang pertama isinya pageview
      // Di pageview isinya scroll direction, controller, item count
      // on page changed, sama item builder
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: _myPages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) => _myPages[index],
          ),
          // 7 Stack yang kedua buat indikator halaman
          // Di column pertama buat garis2, column kedua buat button
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: (_currentPage == 2)
                    ? Container(
                        width: myWidth * 0.5,
                        child: ElevatedButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("/login"),
                          child: Text("Continue"),
                          style: ElevatedButton.styleFrom(
                            primary: primary1,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _myPages.length,
                  (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 10,
                      // 9 Kalo index nya di halaman sekarang, 20, kalo nggak 10
                      width: (index == _currentPage) ? 20 : 10,
                      margin: EdgeInsets.fromLTRB(5, 30, 5, 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage) ? primary1 : primary2,
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  // 6 Buat rule kalo halamannya berubah
  // Current page nya diganti berdasarkan index dari halaman
  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
}
