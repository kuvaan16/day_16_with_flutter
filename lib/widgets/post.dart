import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import '../model/post_model.dart';
import '../profileusers.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: postlist.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 28,
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
                    radius: 4,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage(
                        postlist[index].profile,
                      ),
                    ),
                  ),
                ),
              ),
              title: InkWell(
                onTap: () { 
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileUsers(postdata: postlist[index]),
                  ));
                },
                child: Text(
                  postlist[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                postlist[index].timeago + " ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(
                Icons.more_horiz,
                color: Colors.grey[900],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      postlist[index].postimg,
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 15,
                    child: Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange,
                      ),
                      child: Icon(
                        Ionicons.heart,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 50,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(154, 255, 255, 255),
                      ),
                      child: Text(
                        postlist[index].likes,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 17,
                    right: 20,
                    child: Icon(
                      Ionicons.bookmark,
                      color: Color.fromARGB(215, 255, 255, 255),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 60,
                        height: 10,
                      ),
                      Positioned(
                        //top: 3,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 11.5,
                            backgroundImage: AssetImage("assets/p4.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        //top: 2,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 11.5,
                            backgroundImage: AssetImage("assets/p7.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        //top: 1,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 11.5,
                            backgroundImage: AssetImage("assets/p3.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Liked by",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Kuvaan and " + postlist[index].likes,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "others",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 50),
              child: Text(
                "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for",
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "View all 20 comments",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
            )
          ],
        );
      },
    );
  }
}
