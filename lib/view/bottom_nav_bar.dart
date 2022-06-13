import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:speso/view/chat.dart';
import 'package:speso/view/me.dart';
import 'package:speso/view/scan.dart';
import 'package:speso/view/services.dart';
import '../constants/size_config.dart';
import '../constants/style.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key }) : super(key: key);


  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
 
 int _currentIndex = 0;


  
  late PageController _pageController;

  @override
  void initState()  {
    super.initState();
   
    _pageController = PageController();

    // StoreController().getProfile();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<String> title = ["Chat", "Scan", "Services", "Me"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: const DrawerPage(),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[Chat(), Scan(),Services(), Me()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: w(13,context),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: black, fontSize: w(12,context)) ,
        selectedItemColor: black,
        backgroundColor: white,
        unselectedItemColor: grey,
        unselectedFontSize: w(13,context),
        unselectedLabelStyle: TextStyle(color: grey, fontSize: w(12,context)) ,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Padding(
              padding: const EdgeInsets.only( bottom:5),
              child: SvgPicture.asset(
                "assets/svgs/messages-3.svg",
                semanticsLabel: 'Chat',
                  height: w(30,context),
                width: w(30,context),
                color: _currentIndex == 0 ? purple : grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Scan",
            icon: Padding(
              padding: const EdgeInsets.only( bottom:5),
              child: SvgPicture.asset(
                "assets/svgs/scan 2.svg",
                semanticsLabel: 'Scan',
                 height: w(30,context),
                width: w(30,context),
                color: _currentIndex == 1 ? purple : grey,
              ),
            ),
          ),
         BottomNavigationBarItem(
            label: 
              'Services',
              
            icon: Padding(
              padding: const EdgeInsets.only(bottom:5),
              child: SvgPicture.asset(
                "assets/svgs/image 3 (Traced).svg",
                semanticsLabel: 'Services',
                color: _currentIndex == 2 ? purple : grey,
                 height: w(30,context),
                width: w(30,context),
              ),
            ),
          ),
           BottomNavigationBarItem(
            label: 
              'Me',
              
            icon: Padding(
              padding: const EdgeInsets.only(bottom:5),
              child: SvgPicture.asset(
                "assets/svgs/Me.svg",
                semanticsLabel: 'Me',
                color: _currentIndex == 3 ? purple : grey,
                 height: w(30,context),
                width: w(30,context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
