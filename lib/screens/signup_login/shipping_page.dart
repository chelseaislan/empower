import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class Shipping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondBlack),
        backgroundColor: lightGrey1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Personal Details',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: secondBlack,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              textFieldColumn(
                  "Full Name", TextInputType.name, Icons.person_rounded),
              textFieldColumn("KTP Number", TextInputType.number,
                  Icons.library_books_rounded),
              textFieldColumn("KK Number", TextInputType.number,
                  Icons.library_books_rounded),
              textFieldColumn("Shipping Address", TextInputType.text,
                  Icons.location_city_rounded),
              textFieldColumn("Postal Code", TextInputType.number,
                  Icons.location_on_rounded),
              textFieldColumn("Recipient Phone Number", TextInputType.number,
                  Icons.phone_in_talk_rounded),
              totalContainer(context),
            ],
          )
        ],
      ),
    );
  }

  Container totalContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 1,
                      color: lightGrey2,
                    )
                  ]),
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: secondBlack,
                    ),
                  ),
                  Text(
                    "Rp20.000",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primary1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed("/payment"),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primary1,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Column textFieldColumn(title, type, icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: secondBlack,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            keyboardType: type,
            decoration: InputDecoration(
              hintText: "Enter $title",
              fillColor: white,
              filled: true,
              suffixIcon: Icon(
                icon,
                color: primary1,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 2, color: primary1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 2, color: primary1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
