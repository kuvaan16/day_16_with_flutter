import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:day_14_with_flutter/add.dart';
import 'package:day_14_with_flutter/homepage.dart';
import 'package:day_14_with_flutter/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import 'message.dart';
import 'search.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  var tabIndex = 0;
  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: tabIndex,
        children: const [
          HomePage(),
          SearchPage(),
          SearchPage(),
          MessagesPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 4,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: tabIndex,
            onTap: changeTabIndex,
            selectedItemColor: Colors.orange[300],
            unselectedItemColor: Colors.grey.shade300,
            items: [
              itemBar(Ionicons.home_outline, ""),
              itemBar(Ionicons.search, ""),
              const BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.transparent,
                  ),
                  label: ""),
              itemBar(Ionicons.chatbubbles_outline, ""),
              itemBar(Ionicons.person_outline, "")
            ],
          )),
      floatingActionButton: SizedBox.fromSize(
        size: Size.square(50),
        child: FloatingActionButton(
          backgroundColor: Colors.orange[400],
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Add())),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

itemBar(IconData icon, String label) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 25,
      ),
      label: label);
}
