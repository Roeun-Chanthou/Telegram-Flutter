import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_tabbar/components/build_item_hide.dart';
import 'package:practice_tabbar/widgets/list_item.dart';

class BuildDrawer extends StatefulWidget {
  const BuildDrawer({super.key});

  @override
  State<BuildDrawer> createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  late double screenWidth;
  late double screenHeight;
  bool isHide = false;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: const Color(0xFF33b5e5),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.17,
              color: const Color(0xFF33b5e5),
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.01,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: screenWidth * 0.09,
                        backgroundImage: const AssetImage(
                          "assets/png/image copy 2.png",
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        "assets/svg/Moon.svg",
                        width: 30,
                        height: 30,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Candy",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "+1(123) 567 89 01",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[200],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                        child: isHide
                            ? SvgPicture.asset(
                                "assets/svg/Arrow Up Icon.svg",
                                width: 28,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              )
                            : SvgPicture.asset(
                                "assets/svg/Arrow Up Icon-1.svg",
                                width: 28,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isHide
                ? Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const BuildItemHide(
                          image: "assets/png/image copy 2.png",
                          name: "Candy",
                          verify: "assets/png/check.png",
                        ),
                        const BuildItemHide(
                          image: "assets/png/image copy 3.png",
                          name: "Rakkun",
                          emoji: "assets/png/love.png",
                        ),
                        const BuildItemHide(
                          name: "Add Account",
                          add: "assets/svg/Plus Icon.svg",
                        ),
                        Container(
                          height: 0.8,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            const ListItem(),
          ],
        ),
      ),
    );
  }
}
