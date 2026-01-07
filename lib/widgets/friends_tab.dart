import 'package:flutter/material.dart';
import '../providers/friend_requests.dart';
import '../providers/friend_suggestions.dart';

class FriendsTab extends StatelessWidget {
  const FriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const Text("Friend Requests", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        SizedBox(height: 10),
        friendRequestCard(
          profileImage: "assets/images/x-the-king.png",
          username: "X-the King",
          mutualFriends: "15 mutual friends",
        ),
        SizedBox(height: 10),
        friendRequestCard(
          profileImage: "assets/images/rooney.jpg",
          username: "Rooney",
          mutualFriends: "10 mutual friends",
        ),
        SizedBox(height: 10),
        friendRequestCard(
          profileImage: "assets/images/lord_ahmed.png",
          username: "Lord Ahmed",
          mutualFriends: "7 mutual friends",
        ),
        SizedBox(height: 10),
        friendRequestCard(
          profileImage: "assets/images/seby.jpg",
          username: "Seby",
          mutualFriends: "12 mutual friends",
        ),
        SizedBox(height: 10),
        const Text("People you may know", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        friendSuggestionCard(
          profileImage: "assets/images/hoot.png",
          username: "Hoot",
          mutualFriends: "6 mutual friends",
        ),
        SizedBox(height: 10),
        friendSuggestionCard(
          profileImage: "assets/images/gem.png",
          username: "Gem",
          mutualFriends: "2 mutual friends",
        ),
        SizedBox(height: 10),
        friendSuggestionCard(
          profileImage: "assets/images/roger.png",
          username: "~¥ROGER¥~",
          mutualFriends: "9 mutual friends",
        ),
      ],
    );
  }
}
