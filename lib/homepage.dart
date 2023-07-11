import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import 'widgets/post.dart';
import 'widgets/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Venus",
                      style: TextStyle(
                        color: Colors.orange[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/notice.png",
                            width: 28,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.orange[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
              floating: true,
            ),
          ];
        },
        body: ListView(
          children: [
            Story(),
            SizedBox(height: 10,),
            Post()
          ],
        ),
      ),
    );
  }
}
