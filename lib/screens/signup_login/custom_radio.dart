import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = [];

  @override
  void initState() {
    super.initState();

    sampleData.add(
      new RadioModel(
        false,
        Icons.settings_phone_rounded,
        "0814 1456 1234",
        "Card active period 60 days",
        "Rp30",
        lightGrey2,
        primary1,
      ),
    );
    sampleData.add(
      new RadioModel(
        false,
        Icons.settings_phone_rounded,
        "0814 1456 1235",
        "Card active period 60 days",
        "Rp30",
        lightGrey2,
        primary1,
      ),
    );
    sampleData.add(
      new RadioModel(
        false,
        Icons.settings_phone_rounded,
        "0814 1456 1236",
        "Card active period 60 days",
        "Rp30",
        lightGrey2,
        primary1,
      ),
    );
    sampleData.add(
      new RadioModel(
        true,
        Icons.settings_phone_rounded,
        "0814 1456 1237",
        "Card active period 60 days",
        "Rp30",
        lightGrey2,
        primary1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListItem"),
      ),
      body: new ListView.builder(
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return new InkWell(
            splashColor: lightGrey2,
            onTap: () {
              setState(() {
                sampleData.forEach((element) => element.isSelected = false);
                sampleData[index].isSelected = true;
                print('Button no. ${index + 1} is selected');
              });
            },
            child: new RadioItem(sampleData[index]),
          );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: _item.isSelected ? primary1 : lightGrey2,
          ),
        ],
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(_item.iconData, color: _item.iconColor),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _item.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: secondBlack,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    _item.subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: thirdBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            _item.price,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: _item.iconColor,
            ),
          ),
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final IconData iconData;
  final String title;
  final String subtitle;
  final String price;
  final Color shadowColor;
  final Color iconColor;

  RadioModel(this.isSelected, this.iconData, this.title, this.subtitle,
      this.price, this.shadowColor, this.iconColor);
}