import 'package:flutter/cupertino.dart';
import 'package:tazee/export_screens.dart';

class FloatingBottomNavBar extends StatelessWidget {
  const FloatingBottomNavBar({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(width * 0.4),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 0.4),
            color: Colors.white,
          ),
          child: const GNav(
            padding: EdgeInsets.all(15),
            backgroundColor: Colors.white,
            tabs: [
              GButton(
                backgroundColor: Colors.black,
                iconActiveColor: Colors.white,
                iconColor: Colors.black,
                icon: CupertinoIcons.house_fill,
              ),
              GButton(
                backgroundColor: Colors.black,
                iconActiveColor: Colors.white,
                iconColor: Colors.black,
                icon: CupertinoIcons.compass,
              ),
              GButton(
                backgroundColor: Colors.black,
                iconActiveColor: Colors.white,
                iconColor: Colors.black,
                icon: CupertinoIcons.suit_heart,
              ),
              GButton(
                backgroundColor: Colors.black,
                iconActiveColor: Colors.white,
                iconColor: Colors.black,
                icon: CupertinoIcons.person,
              )
            ],
          ),
        ),
      ),
    );
  }
}
