import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/story_model.dart';
import '../model/story_model.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        
        
        itemCount: storylist.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsets.only(right: 15),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/kk.jpg",
                        ),
                        radius: 28,
                      ),
                    ),
                    Positioned(
                      bottom: -1,
                      left: 19,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.orange[500],
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 18),
                  margin: EdgeInsets.only(right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.all(2.3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.orange, Colors.orangeAccent],
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 26,
                              backgroundImage: AssetImage(storylist[index].img),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        storylist[index].name,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            letterSpacing: .2),
                      )
                    ],
                  ),
                )
              ],
            );
          } else {
            return Container(
              padding: EdgeInsets.only(top: 18),
              margin: EdgeInsets.only(right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: EdgeInsets.all(2.3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.orange, Colors.orangeAccent],
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage(storylist[index].img),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    storylist[index].name,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: .2),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
