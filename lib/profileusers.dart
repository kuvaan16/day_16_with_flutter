import 'package:day_14_with_flutter/setting.dart';
import 'package:day_14_with_flutter/widgets/profileposted.dart';
import 'package:day_14_with_flutter/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model/post_model.dart';

class ProfileUsers extends StatelessWidget {
  final Post postdata;
  const ProfileUsers({Key? key, required this.postdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (postdata.name == 'Kuvaan16') { 
      return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  child: Image.asset(
                    postdata.postimg,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 170),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 26,
                      blurRadius: 60,
                      offset: Offset(0, 30),
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                  //color: Colors.white
                ),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 56,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.all(2.9),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.orange, Colors.orangeAccent],
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 54,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                postdata.profile,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        postdata.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "@marck_jones",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "What's up guys don't forget to \nFollowe my acc",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Posts",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "6",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Followers",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "20K",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Following",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "203",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      
                      
                      Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(79, 158, 158, 158)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(3),
                              width: 154,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13)),
                              child: Text(
                                "Images",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 160,
                              child: Text(
                                "Videos",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ProfilePosted()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                child: Image.asset(
                  postdata.postimg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 170),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 26,
                    blurRadius: 60,
                    offset: Offset(0, 30),
                    blurStyle: BlurStyle.normal,
                  ),
                ],
                //color: Colors.white
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 56,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.all(2.9),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.orange, Colors.orangeAccent],
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 54,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              postdata.profile,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      postdata.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "@marck_jones",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "What's up guys don't forget to \nFollowe my acc",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Posts",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "25",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "20K",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Following",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "203",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: [Colors.orange, Colors.orange, Colors.amber],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 320,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromARGB(79, 158, 158, 158)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(3),
                            width: 154,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13)),
                            child: Text(
                              "Images",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 160,
                            child: Text(
                              "Videos",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ProfilePosted()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
