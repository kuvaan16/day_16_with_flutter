import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ionicons/ionicons.dart';

import 'darkmood.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final darkColor = Colors.black;
  final lightColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? darkColor : lightColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Settings",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.amber, fontSize: 22),
        ),
        backgroundColor: isDark ? darkColor : lightColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Ionicons.arrow_back_outline,
            color: Colors.amber,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              width: 374,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isDark ? Colors.grey[900] : Colors.grey[300],
              ),
              child: Row(
                children: [
                  Icon(
                    Ionicons.search,
                    color: isDark ? Colors.grey[700] : Colors.grey[500],
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: isDark ? Colors.grey[700] : Colors.grey[500],
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Container(
                height: MediaQuery.of(context).size.height - 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Ionicons.lock_closed_outline,
                          color: !isDark ? darkColor : lightColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Privacy",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .2,
                            color: !isDark ? darkColor : lightColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Ionicons.notifications_outline,
                          color: !isDark ? darkColor : lightColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Notifications",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .2,
                            color: !isDark ? darkColor : lightColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Ionicons.shield_checkmark_outline,
                          color: !isDark ? darkColor : lightColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Security",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .2,
                            color: !isDark ? darkColor : lightColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Ionicons.person_circle_outline,
                          color: !isDark ? darkColor : lightColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .2,
                            color: !isDark ? darkColor : lightColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Ionicons.help_buoy_outline,
                          color: !isDark ? darkColor : lightColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Help",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .2,
                            color: !isDark ? darkColor : lightColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Ionicons.information_circle_outline,
                          color: !isDark ? darkColor : lightColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .2,
                            color: !isDark ? darkColor : lightColor,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDark = !isDark;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            !isDark
                                ? Ionicons.moon_outline
                                : Ionicons.sunny_outline,
                            color: !isDark ? darkColor : lightColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            !isDark ? "Dark mode" : "Light mode",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .2,
                              color: !isDark ? darkColor : lightColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Logins",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .2,
                        color: !isDark ? darkColor : lightColor,
                      ),
                    ),
                    Text(
                      "Add or switch accounts",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .2,
                        color: Colors.orange[400],
                      ),
                    ),
                    Text(
                      "Log out kuvaan16",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .2,
                        color: Colors.orange[400],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
