import 'package:flutter/material.dart';
import '../providers/post.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 235, 235),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "What's on your mind?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.photo_camera, size: 30, color: Colors.green),
                    onPressed: () {},
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 2),
              // story panel
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Column(
                                  children: [
                                    //Top-half of the container
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/profile.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    //Bottom-half
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 2,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      alignment: Alignment.bottomCenter,
                                      child: const Text(
                                        "Create Story",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 71.5,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () => {},
                                      child: IconButton(
                                        icon: Icon(Icons.add_circle, size: 40, color: Colors.blue),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          for (int i = 0; i < 8; i++)
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/profile.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      left: 10,
                                      right: 0,
                                      child: Text(
                                        "Gedion",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Divider(color: const Color.fromARGB(255, 202, 202, 202), height: 10, thickness: 2),
              const SizedBox(height: 10),
            ],
          ),
        ),

        // Posts
        facebookPost(
          profileImage: 'assets/images/profile.jpg',
          username: 'Gedion',
          time: '2 hrs ago',
          postText: 'Watching Anime',
          postImage: 'assets/images/pxfuel.jpg',
        ),
        facebookPost(
          profileImage: 'assets/images/rooney.jpg',
          username: 'Rooney',
          time: '7 hrs ago',
          postText: 'Gametime!',
          postImage: 'assets/images/gaming.jpg',
        ),
      ],
    );
  }
}
