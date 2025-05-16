import 'package:flutter/material.dart';
import 'package:homework/screen/download_screen.dart';
import 'package:homework/screen/home_screen.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    DownloadScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262340),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
            selectedIconTheme:
                const IconThemeData(color: Colors.white, size: 26),
            unselectedIconTheme:
                const IconThemeData(color: Colors.grey, size: 22),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.normal),
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            elevation: 0,
            backgroundColor: Color(0xFF262340),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.save_alt), label: "Saved"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Download"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "Me"),
            ]),
      ),
      body: pages[selectedIndex],
    );
  }
}
