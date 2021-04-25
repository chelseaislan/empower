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
            UsageStackWidget(),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}

class UsageStackWidget extends StatelessWidget {
  const UsageStackWidget({
    Key key,
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
                "Total Data",
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
                "8.5 GB",
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
              children: [
                UsageDetailContainer(
                  iconData: Icons.language_rounded,
                  title: "Kuota Kemendikbud",
                  number1: 4.0.toString(),
                  number2: 12.toString(),
                  type: "GB",
                  remaining: 0.40,
                  activeUntil: "29 April 2021",
                  whatHour: "12:00",
                  isVisible: true,
                ),
                UsageDetailContainer(
                  iconData: Icons.language_rounded,
                  title: "Friendly Package",
                  number1: 4.5.toString(),
                  number2: 12.toString(),
                  type: "GB",
                  remaining: 0.45,
                  activeUntil: "03 May 2021",
                  whatHour: "10:00",
                  isVisible: false,
                ),
              ],
            ),
            SizedBox(height: 80),
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.bottomCenter,
          child: OutlineCircularButton(
            iconData: Icons.add_circle_rounded,
            labelText: "Buy Data Packages",
            myColor: appBarColor,
            onPressed: () async {
              await Navigator.of(context).pushNamed("/add_data");
            },
          ),
        ),
      ],
    );
  }
}
