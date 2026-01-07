import 'package:facebook_clone2/providers/notifications.dart';
import 'package:flutter/material.dart';
import './providers/post.dart';
import './providers/friend_requests.dart';
import './providers/friend_suggestions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Controller for PageView
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  // Home Page
  Widget _buildHomePage() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
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
              SizedBox(height: 10.0),
            ],
          ),
        ),
        // personal posts
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

  // Friends Page
  Widget _buildFriendsPage() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Friend Requests",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              SizedBox(height: 10),
              friendRequestCard(
                profileImage: "assets/images/x-the-king.png",
                username: "X-the King",
                mutualFriends: "15 mutual friends",
              ),
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
              Text(
                "People you may know",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
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
          ),
        ),
      ],
    );
  }

  // Notifications Page
  Widget _buildNotificationsPage() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
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
          ),
        ),
      ],
    );
  }

  // PageView Builder
  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
      children: [
        // Page 0: Home
        _buildHomePage(),
        // Page 1: Friends
        _buildFriendsPage(),
        // Page 2: Notifications
        _buildNotificationsPage(),
      ],
    );
  }

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
      body: Column(
        children: [
          // Navigation Bar
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.home, size: 30, color: _currentPageIndex == 0 ? Color.fromARGB(255, 0, 126, 228) : Colors.grey),
                  onPressed: () {
                    _pageController.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person, size: 30, color: _currentPageIndex == 1 ? Color.fromARGB(255, 0, 126, 228) : Colors.grey),
                  onPressed: () {
                    _pageController.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message_rounded, size: 30, color: Colors.grey),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(Icons.video_collection, size: 30, color: Colors.grey),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications, size: 30, color: _currentPageIndex == 2 ? Color.fromARGB(255, 0, 126, 228) : Colors.grey),
                  onPressed: () {
                    _pageController.animateToPage(
                      2,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.business_center_rounded, size: 30, color: Colors.grey),
                  onPressed: () => {},
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey, height: 0, thickness: 0.5),

          // PageView (swipeable)
          Expanded(
            child: _buildPageView(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
