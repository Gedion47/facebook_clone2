import 'package:flutter/material.dart';
import './widgets/home_tab.dart';
import './widgets/friends_tab.dart';
import './widgets/notifications_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Controller for PageView
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  // PageView Builder
  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() => _currentPageIndex = index);
      },
      children: const [
        HomeTab(),
        FriendsTab(),
        NotificationsTab(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
