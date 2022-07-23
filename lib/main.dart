import 'package:assignment/pages/main_screen.dart';
import 'package:assignment/theme/colors.dart';
import 'package:assignment/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.black12),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: AppButton(
              imagePath: 'asset/≡ƒôì Leading Icon l Use High Emphasis.svg',
              function: () {}),
          actions: [
            AppButton(imagePath: 'asset/Group 921.svg', function: () {}),
            buildNotificationStack(),
            AppButton(imagePath: 'asset/profile.svg', function: () {}),
          ],
          backgroundColor: Colors.white12,
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF273d66),
          //Floating action button on Scaffold
          onPressed: () {
            //code to execute on button press
          },
          child: Icon(Icons.add), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: buildBottomNavigationBar(),
        body:
            const MainScreen() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "asset/Group 910.svg",
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "asset/Group 912.svg",
          ),
          label: 'Customers',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "asset/Group 913.svg",
          ),
          label: 'Khata',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "asset/Group 914.svg",
          ),
          label: 'Orders',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: textColor,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedItemColor: textColor,
      onTap: _onItemTapped,
    );
  }

  Padding buildNotificationStack() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          FloatingActionButton(
              child: SvgPicture.asset(
                'asset/≡ƒôìTrailing icon 1.svg',
              ),
              backgroundColor: Colors.white,
              onPressed: () {} //do something,
              ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 4, 18, 8),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(40), // <= No more error here :)
                    color: Colors.red,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
