import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class AgreeContainer extends StatelessWidget {
  final String bankId;

  const AgreeContainer({Key key, this.bankId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Selected Method: $bankId",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: secondBlack,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "By continuing, you will automatically agree to our Terms of Use and Privacy Policy.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: secondBlack,
            ),
          ),
        ],
      ),
    );
  }
}
