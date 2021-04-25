import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      onPressed: () => Fluttertoast.showToast(
        msg: "Starting live chat...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      ),
    );
  }
}
