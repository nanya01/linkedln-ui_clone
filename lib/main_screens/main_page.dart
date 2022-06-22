import 'package:flutter/material.dart';
import 'package:linkedln_clone_app/main_screens/home.dart';
import 'package:linkedln_clone_app/main_screens/jobs.dart';
import 'package:linkedln_clone_app/main_screens/my_network.dart';
import 'package:linkedln_clone_app/main_screens/notification.dart';
import 'package:linkedln_clone_app/main_screens/post.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentIndex = 0;

  final screens = [
    const Home(),
    const MyNetwork(),
    const Post(),
    const Notifications(),
    const JobView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard), label: 'My Network'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_important), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.badge), label: 'Jobs'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
