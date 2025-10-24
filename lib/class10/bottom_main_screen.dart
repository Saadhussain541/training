import 'package:flutter/material.dart';
import 'package:training_class/class10/faq_bottom_screen.dart';
import 'package:training_class/class10/gallery_bottom_screen.dart';
import 'package:training_class/class10/profile_bottom_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home_bottom_screen.dart';
// class BottomMainScreen extends StatefulWidget {
//   const BottomMainScreen({super.key});
//
//   @override
//   State<BottomMainScreen> createState() => _BottomMainScreenState();
// }
//
// class _BottomMainScreenState extends State<BottomMainScreen> {
//   int currentIndex=0;
//   List<Widget> screens=[HomeBottomScreen(),GalleryBottomScreen(),FaqBottomScreen(),ProfileBottomScreen()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: Colors.green,
//           unselectedItemColor: Colors.grey,
//           currentIndex: currentIndex,
//           onTap: (val){
//
//             setState(() {
//               currentIndex=val;
//             });
//
//           },
//
//           items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
//         BottomNavigationBarItem(icon: Icon(Icons.image),label: "Gallery"),
//         BottomNavigationBarItem(icon: Icon(Icons.question_answer),label: "FAQ"),
//         BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
//       ]),
//       body: screens[currentIndex],
//     );
//   }
// }


class BottomMainScreen extends StatefulWidget {
  const BottomMainScreen({super.key});

  @override
  State<BottomMainScreen> createState() => _BottomMainScreenState();
}

class _BottomMainScreenState extends State<BottomMainScreen> {
  int currentIndex=1;
  List<Widget> screens=[HomeBottomScreen(),GalleryBottomScreen(),FaqBottomScreen(),ProfileBottomScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
        child: GNav(
          selectedIndex:currentIndex,
          onTabChange: (index){
            setState(() {
              currentIndex=index;
            });
          },
          padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
          // backgroundColor: Colors.black,
          rippleColor: Colors.yellow,
          activeColor: Colors.purple,
          tabBackgroundColor: Colors.grey,
          color: Colors.white,
          tabs: [
            GButton(icon: Icons.home,text: "Home"),
            GButton(icon: Icons.image,text: "Gallery",),
            GButton(icon: Icons.question_answer,text: "FAQ",),
            GButton(icon: Icons.person,text: "Profile",),
          ],

        ),
      ),
    );
  }
}
