import 'package:flutter/material.dart';

import '../widgets/build_title.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        height: 8,
      ),
      buildTitle(),
      SizedBox(
        height: 8,
      ),
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => Container(
            width: width * 0.8,
            child: Center(child: Text('Card ${index}')),
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: width * 0.8,
          child: Center(child: Text('Date Card')),
        ),
      ),
      Expanded(
        child: Container(
          width: width * 0.8,
          child: Center(child: Text('Order Card')),
        ),
      ),
    ]);
  }
}
