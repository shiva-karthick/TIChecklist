import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/views/home_view.dart';
import 'package:provider_architecture/ui/views/test_view.dart';

class TabContainer extends StatefulWidget {
  const TabContainer({Key key}) : super(key: key);

  @override
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              HomeView(),
              Test(),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        selectedIndex: _currentIndex,
        backgroundColor: Colors.white,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Charts'),
            icon: Icon(Icons.bar_chart_rounded),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
