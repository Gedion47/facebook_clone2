import 'package:flutter/material.dart';

Widget notificationCard({
  required String profileImage,
  required String message,
  required String time,
}) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: GestureDetector(
          onTap: () => {},
          child: CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage(profileImage),
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 10),
            Text(
              time,
              style: TextStyle(
                fontSize: 14,
                color: const Color.fromARGB(255, 99, 99, 99),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
      IconButton(
        onPressed: () => {},
        icon: Icon(Icons.more_horiz, size: 30),
      ),
    ],
  );
}
