import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:fake_mpwr/screens/top_up/add_data.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Referral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NoActionsAppBar(appBarTitle: "Your Referral Code"),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [appBarColor, primary1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Share your referral code to your friends and families to get free 2GB data each!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: white,
                        height: 1.5,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
                      alignment: Alignment.center,
                      child: QrImage(
                        version: 6,
                        backgroundColor: white,
                        foregroundColor: secondBlack,
                        size: 200,
                        errorCorrectionLevel: QrErrorCorrectLevel.M,
                        data: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 30, 50, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Referral Code",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: white,
                                ),
                              ),
                              Text(
                                "RCRL193CQ",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () => Fluttertoast.showToast(
                              msg: "Copied referral code.",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            ),
                            icon: Icon(
                              Icons.copy_all_rounded,
                              size: 30,
                              color: white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 20),
            child: OutlineCircularButton(
              iconData: Icons.share_arrival_time_rounded,
              labelText: "Share Referral Code",
              myColor: appBarColor,
              onPressed: () => Fluttertoast.showToast(
                msg: "Loading applications...",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
