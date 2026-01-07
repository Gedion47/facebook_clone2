import 'package:flutter/material.dart';
import '../providers/notifications.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const Text("Notifications", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        notificationCard(
          profileImage: "assets/images/profile.jpg",
          message: "You have memories with Taliah Rossi and Mabel Quintero to look back on today",
          time: "3 hours ago",
        ),
        SizedBox(height: 10),
        notificationCard(
          profileImage: "assets/images/profile.jpg",
          message: "Susan Preece changed her profile picture",
          time: "yesterday at 11:22pm",
        ),
        SizedBox(height: 10),
        notificationCard(
          profileImage: "assets/images/profile.jpg",
          message: "David Beckham changed his profile picture",
          time: "yesterday at 8:28pm",
        ),
        SizedBox(height: 10),
        notificationCard(
          profileImage: "assets/images/profile.jpg",
          message: "Macaulay Dolan's birthday was yesterday.",
          time: "10 hours ago",
        ),
        SizedBox(height: 10),
        notificationCard(
          profileImage: "assets/images/profile.jpg",
          message: "David Beckham changed his profile picture",
          time: "yesterday at 9:00pm",
        ),
        SizedBox(height: 10),
        notificationCard(
          profileImage: "assets/images/profile.jpg",
          message: "David Beckham changed his profile picture",
          time: "yesterday at 8:50pm",
        ),
        SizedBox(height: 10),
        notificationCard(
          profileImage: "assets/images/profile.jpg",
          message: "David Beckham changed his profile picture",
          time: "yesterday at 7:28pm",
        ),
      ],
    );
  }
}
