import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/screens/home_screen.dart';
import 'package:instagram_ui_clone/screens/search_screen.dart';
import 'package:instagram_ui_clone/screens/like_screen.dart';
import 'package:instagram_ui_clone/screens/profile_screen.dart';
import 'package:instagram_ui_clone/screens/reels_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  List<BottomIcon> myTabs = <BottomIcon>[
    BottomIcon(
      iconThere: true,
      icon: Icons.home,
    ),
    BottomIcon(
      iconThere: true,
      icon: Icons.search,
    ),
    BottomIcon(
      iconThere: true,
      icon: Icons.ondemand_video_sharp,
    ),
    BottomIcon(
      iconThere: true,
      icon: Icons.favorite_outline,
    ),
    BottomIcon(
      iconThere: false,
      profilePhoto:
          'https://cdn.statically.io/img/www.itl.cat/pngfile/big/117-1175255_related-post-watch-dogs-2-android.jpg',
    )
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: myTabs.length, initialIndex: 0);
    _tabController.addListener(() {
      if (_tabController.index != 0) {
        myTabs[0] = BottomIcon(
          iconThere: true,
          icon: Icons.home_outlined,
        );
      } else {
        myTabs[0] = BottomIcon(
          iconThere: true,
          icon: Icons.home,
        );
      }
      if (_tabController.index == 3) {
        myTabs[3] = BottomIcon(
          iconThere: true,
          icon: Icons.favorite,
        );
      } else {
        myTabs[3] = BottomIcon(
          iconThere: true,
          icon: Icons.favorite_outline,
        );
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(),
          SearchScreen(),
          ReelsScreen(),
          LikeScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black26),
          ),
        ),
        child: TabBar(
          tabs: myTabs,
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
    );
  }
}

class BottomIcon extends StatelessWidget {
  final bool iconThere;
  final IconData icon;
  final String profilePhoto;
  BottomIcon({this.icon, this.iconThere, this.profilePhoto});
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: iconThere
          ? Icon(
              icon,
              color: Colors.black,
              size: 27.0,
            )
          : CircleAvatar(
              backgroundImage: NetworkImage(profilePhoto),
              maxRadius: 15.0,
            ),
    );
  }
}
