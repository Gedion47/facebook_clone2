import 'package:flutter/material.dart';
import './providers/post.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 126, 228),
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.search, size: 30), onPressed: () => {}),
          IconButton(icon: const Icon(Icons.add, size: 30), onPressed: () => {}),
          IconButton(icon: Icon(Icons.message, size: 30), onPressed: () => {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.home, size: 30, color: Color.fromARGB(255, 0, 126, 228)),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.person, size: 30),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.message_rounded, size: 30),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.video_collection, size: 30),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, size: 30),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.business_center_rounded, size: 30),
                  onPressed: () => {},
                ),
              ],
            ),
            Divider(color: Colors.grey, height: 18, thickness: 0.5),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                          onTap: () => {},
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/profile.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 235, 235),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.photo_camera, size: 30, color: Colors.green),
                        onPressed: () => {},
                      ),
                    ],
                  ),
                  Divider(color: const Color.fromARGB(255, 202, 202, 202), height: 22, thickness: 2),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
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
                    ],
                  ),
                  Divider(color: const Color.fromARGB(255, 202, 202, 202), height: 22, thickness: 2),
                  SizedBox(height: 10.0),
                  // personal posts
                  facebookPost(
                    profileImage: 'assets/images/profile.jpg',
                    username: 'Gedion',
                    time: '2 hrs ago',
                    postText: 'Watching Anime',
                    postImage: 'assets/images/pxfuel.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
