import 'package:flutter/material.dart';

Widget friendRequestCard({
  required String profileImage,
  required String username,
  required String mutualFriends,
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
              username,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              mutualFriends,
              style: TextStyle(
                fontSize: 14,
                color: const Color.fromARGB(255, 99, 99, 99),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1877F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size.fromHeight(40),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size.fromHeight(40),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      'Delete',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
