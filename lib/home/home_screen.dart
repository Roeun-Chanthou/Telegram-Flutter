import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_tabbar/screens/all_chat.dart';
import 'package:practice_tabbar/screens/bot.dart';
import 'package:practice_tabbar/screens/work.dart';
import 'package:practice_tabbar/widgets/build_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);

  late double screenWidth;

  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF33b5e5),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
            );
          },
        ),
        title: const Text(
          "Telegram",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      drawer: const BuildDrawer(),
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              color: const Color(0xFF33b5e5),
              height: 40,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                unselectedLabelColor: Colors.grey[100],
                labelStyle: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                indicatorWeight: 4,
                tabs: const [
                  Tab(
                    text: "All Chats",
                  ),
                  Tab(
                    text: "Word",
                  ),
                  Tab(
                    text: "Bots",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AllChat(),
                  Work(),
                  Bots(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF33b5e5),
        shape: const CircleBorder(),
        child: SvgPicture.asset(
          "assets/svg/Pencil Icon.svg",
          width: 25,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
