import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class LiveChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: primary1,
      child: Icon(
        Icons.support_agent_rounded,
        size: 40,
      ),
      tooltip: "Live Chat",
      onPressed: () {},
    );
  }
}
