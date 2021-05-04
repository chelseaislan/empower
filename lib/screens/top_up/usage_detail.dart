import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:fake_mpwr/custom_widgets/usage_detail_container.dart';
import 'package:flutter/material.dart';

class UsageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1 Buat TabBar
    var myTabBar = TabBar(
      tabs: [
        Tab(text: "Data"),
        Tab(text: "Topping"),
        Tab(text: "Phone"),
      ],
      labelColor: secondBlack,
      indicator: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
    );

    // 2 Wrap scaffold pake default tab controller
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: lightGrey1,
        appBar: AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Usage Details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_rounded),
              tooltip: "Information",
            ),
          ],
          // 3 Preferred size untuk bottom
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              height: 35,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: lightGrey2),
              child: Container(
                margin: EdgeInsets.all(3),
                child: myTabBar,
              ),
            ),
          ),
        ),
        // 4 Body TabBarView
        body: TabBarView(
          children: [
            UsageStackWidget(
              totalText: "Data",
              totalNumber: "8.7",
              totalGbOrPhone: "GB",
              bottomRoute: "/add_data",
              activePackages: [
                UsageDetailContainer(
                  iconData: Icons.language_rounded,
                  title: "Kuota Kemendikbud",
                  number1: 11.0,
                  number2: 12.0,
                  type: "GB",
                  activeUntil: "29 April 2021",
                  whatHour: "12:00",
                  isVisible: true,
                ),
                UsageDetailContainer(
                  iconData: Icons.language_rounded,
                  title: "Friendly Package",
                  number1: 10.0,
                  number2: 12,
                  type: "GB",
                  activeUntil: "03 May 2021",
                  whatHour: "10:00",
                  isVisible: false,
                ),
              ],
            ),
            UsageStackWidget(
              totalText: "Topping",
              totalNumber: "0.2",
              totalGbOrPhone: "GB",
              bottomRoute: "/add_topping",
              activePackages: [
                UsageDetailContainer(
                  iconData: Icons.addchart_rounded,
                  title: "GitHub Topping",
                  number1: 0.3,
                  number2: 1,
                  type: "GB",
                  activeUntil: "03 May 2021",
                  whatHour: "10:00",
                  isVisible: true,
                ),
              ],
            ),
            UsageStackWidget(
              totalText: "Phone",
              totalNumber: "0",
              totalGbOrPhone: "minutes",
              bottomRoute: "/add_phone",
              activePackages: [
                UsageDetailContainer(
                  iconData: Icons.addchart_rounded,
                  title: "All-net Super",
                  number1: 18,
                  number2: 200,
                  type: "minutes",
                  activeUntil: "03 May 2021",
                  whatHour: "10:00",
                  isVisible: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UsageStackWidget extends StatelessWidget {
  final String totalText;
  final String totalNumber;
  final String totalGbOrPhone;
  final String bottomRoute;
  final List<Widget> activePackages;

  const UsageStackWidget({
    Key key,
    this.totalText,
    this.totalNumber,
    this.totalGbOrPhone,
    this.activePackages,
    this.bottomRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              child: Text(
                "Total $totalText",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: white,
                ),
              ),
            ),
            // Rencananya bisa nambah
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Text(
                "$totalNumber $totalGbOrPhone",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: white,
                ),
              ),
            ),
            Divider(
              color: lightGrey1,
              height: 40,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Here are the details of your active package(s):",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: white,
                ),
              ),
            ),
            Column(
              children: activePackages,
            ),
            SizedBox(height: 80),
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.bottomCenter,
          child: OutlineCircularButton(
            iconData: Icons.add_circle_rounded,
            labelText: "Buy $totalText Packages",
            myColor: appBarColor,
            onPressed: () async {
              await Navigator.of(context).pushNamed(bottomRoute);
            },
          ),
        ),
      ],
    );
  }
}
