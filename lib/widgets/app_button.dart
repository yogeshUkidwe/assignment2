import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppButton extends StatelessWidget {
  late String imagePath;
  Function function;
  AppButton({required this.function, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
          child: SvgPicture.asset(
            imagePath,
          ),
          backgroundColor: Colors.white,
          onPressed: () => function //do something,
          ),
    );
  }
}
