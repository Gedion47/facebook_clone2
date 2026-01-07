import 'package:flutter/material.dart';

Widget facebookPost({
  required String profileImage,
  required String username,
  required String time,
  required String postText,
  required String postImage,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 1,
          spreadRadius: 0,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () => {},
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(profileImage),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, size: 20),
                  onPressed: () => {},
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 10),

        Text(
          postText,
          style: TextStyle(fontSize: 15),
        ),

        SizedBox(height: 10),

        //post image
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            postImage,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(height: 10),

        //like/comment/share
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.thumb_up_alt_outlined,
                size: 22,
                color: Colors.grey,
              ),
              onPressed: () => {},
            ),
            Text("Like"),
            SizedBox(width: 40),
            IconButton(
              icon: const Icon(Icons.comment_outlined, size: 22, color: Colors.grey),
              onPressed: () => {},
            ),
            Text("Comment"),
            SizedBox(width: 40),
            IconButton(
              icon: const Icon(Icons.share_outlined, size: 22, color: Colors.grey),
              onPressed: () => {},
            ),
            Text("Share"),
          ],
        ),
      ],
    ),
  );
}
