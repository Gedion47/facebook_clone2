import 'package:flutter/material.dart';
import '../providers/post.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
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
              const Divider(thickness: 2),
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
