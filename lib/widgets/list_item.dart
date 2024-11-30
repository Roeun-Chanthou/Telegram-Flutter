import 'package:flutter/material.dart';
import 'package:practice_tabbar/components/build_list.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const BuildList(
              title: "New Group",
              icon: "assets/svg/Group Icon.svg",
            ),
            const BuildList(
              title: "Contact",
              icon: "assets/svg/User Icon.svg",
            ),
            const BuildList(
              title: "Calls",
              icon: "assets/svg/Phone Icon.svg",
            ),
            const BuildList(
              title: "People Nearby",
              icon: "assets/svg/Location Icon.svg",
            ),
            const BuildList(
              title: "Save Messages",
              icon: "assets/svg/Boockmark icon.svg",
            ),
            const BuildList(
              title: "Settings",
              icon: "assets/svg/settings.svg",
            ),
            Container(
              height: 0.8,
              color: Colors.grey[300],
            ),
            const BuildList(
              title: "Invite Friends",
              icon: "assets/svg/Add User Icon.svg",
            ),
            const BuildList(
              title: "Telegram Features",
              icon: "assets/svg/FaQ Icon.svg",
            ),
          ],
        ),
      ),
    );
  }
}
