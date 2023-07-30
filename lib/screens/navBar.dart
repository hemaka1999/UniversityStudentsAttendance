
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'qr_screen.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final pages=[
    const QRScreen(),
    const HomeScreen(),
    const ProfileScreen()];
  int _index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        color: Colors.deepPurple.shade200,
        //animationDuration: Duration(microseconds: 500),
        onTap: (index){
         _index=index;
         setState(() {

         });
        },
        items: const [
          Icon(Icons.qr_code_2_outlined),
          Icon(Icons.home),
          Icon(Icons.person_outlined),
        ],
      ),
      body:pages[_index] ,
    );
  }
}
