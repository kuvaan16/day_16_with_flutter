import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePosted extends StatelessWidget {
  const ProfilePosted({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: MasonryGridView.builder(
        itemCount: 6,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(6.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                    'assets/post' + (index + 4).toString() + '.jpg'),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Icon(
                  Ionicons.chatbubble,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 30,
                child: Text(
                  "16",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: -4,
                child: Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 10,
                    ),
                    Positioned(
                      //top: 3,
                      child: CircleAvatar(
                        radius: 9.5,
                        backgroundImage: AssetImage("assets/p4.jpg"),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      //top: 2,
                      child: CircleAvatar(
                        radius: 9.5,
                        backgroundImage: AssetImage("assets/p7.jpg"),
                      ),
                    ),
                    Positioned(
                      left: 23,
                      //top: 1,
                      child: CircleAvatar(
                        radius: 9.5,
                        backgroundImage: AssetImage("assets/p3.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
