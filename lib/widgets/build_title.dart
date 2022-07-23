import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'app_button.dart';
class buildTitle extends StatelessWidget {
  const buildTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                "Welcome Mypcot !!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: textColor.withOpacity(0.8)),
              ),
              Text(
                "here is your dashboard.....",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor.withOpacity(0.6)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          AppButton(imagePath: 'asset/Group 922.svg', function: () {}),
        )
      ],
    );
  }
}