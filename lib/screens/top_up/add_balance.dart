import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';

class AddBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Add Balance',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              BlueHeader(
                title: "In need of pulsa to call?",
                subtitle: "Top up your balance here before it's too late!",
              ),
              TextStyleOne(
                title: "Available packages:",
              ),
              Column(
                children: [
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: primary1,
                    title: "Pulsa 15.000",
                    subtitle: "+ 30 Days Active Period",
                    price: "Rp15.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: lightGrey2,
                    title: "Pulsa 25.000",
                    subtitle: "+ 30 Days Active Period",
                    price: "Rp25.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: lightGrey2,
                    title: "Pulsa 40.000",
                    subtitle: "+ 30 Days Active Period",
                    price: "Rp40.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: lightGrey2,
                    title: "Pulsa 50.000",
                    subtitle: "+ 60 Days Active Period",
                    price: "Rp50.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: lightGrey2,
                    title: "Pulsa 100.000",
                    subtitle: "+ 60 Days Active Period",
                    price: "Rp100.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: lightGrey2,
                    title: "Pulsa 200.000",
                    subtitle: "+ 90 Days Active Period",
                    price: "Rp200.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: lightGrey2,
                    title: "Pulsa 500.000",
                    subtitle: "+ 180 Days Active Period",
                    price: "Rp500.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: lightGrey2,
                    title: "Pulsa 1.000.000",
                    subtitle: "+ 360 Days Active Period",
                    price: "Rp1.000.000",
                  ),
                ],
              ),
              SizedBox(height: 115),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalPriceNew(
              totalPrice: "15.000",
              titleText: "Total Price:",
              routeNext: "/add_payment",
              myColor: appBarColor,
            ),
          )
        ],
      ),
    );
  }
}
