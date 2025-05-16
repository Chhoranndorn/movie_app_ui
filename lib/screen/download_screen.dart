import 'package:flutter/material.dart';
import 'package:homework/screen/widget/dowloaded_card.dart';
import 'package:homework/screen/widget/movie_card.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final tabs = ['Downloaded', 'Downloading'];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF070421),
      appBar: AppBar(
        title: Center(
            child: const Text(
          'Download',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Color(0xFF070421),
      ),
      body: Column(
        children: [
          TabBar(
            dividerColor: Color(0xFF070421),
            controller: _tabController,
            labelColor: const Color(0xFFD81B4D),
            unselectedLabelColor: Colors.grey,
            indicatorColor: const Color(0xFFD81B4D),
            indicatorWeight: 3,
            tabs: tabs.map((tab) => Tab(text: tab)).toList(),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child: DowloadedCard(),
                ),
                Center(
                  child: DowloadedCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
