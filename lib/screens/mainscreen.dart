import 'package:flutter/material.dart';
import 'package:shaqadef/screens/add.dart';
import 'package:shaqadef/screens/home.dart';
import 'package:shaqadef/screens/profile.dart';
import 'package:shaqadef/screens/search.dart';
import 'package:shaqadef/screens/more.dart';
import 'package:shaqadef/widget/usedwidget/bottomnavigator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const ProfileScreen(),
    const Morescreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigator(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
