import 'package:flutter/material.dart';

class TestTopdown extends StatefulWidget {
  const TestTopdown({super.key});

  @override
  State<TestTopdown> createState() => _TestTopdownState();
}

class _TestTopdownState extends State<TestTopdown> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },
              child: Container(
                height: 70,
                color: Colors.red,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Click to expand 😀",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Icon(
                        isClick ? Icons.arrow_upward : Icons.arrow_downward,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
            isClick
                ? Container(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/pro1.png",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.green,
                                        border: Border.all(
                                            color: Colors.white, width: 3)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: isClick ? 60 : 0,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
