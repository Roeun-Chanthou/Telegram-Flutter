import 'package:flutter/material.dart';

class CardChart extends StatelessWidget {
  const CardChart({
    super.key,
    this.image,
    this.message,
    this.username = "",
    this.detail = "",
    this.active,
    this.atlern = "",
    this.icon,
    this.color,
    this.colorButton,
    required this.date,
    this.read,
    this.verify,
  });
  final String? verify;
  final String? image;
  final String? message;
  final String username;
  final String detail;
  final String? active;
  final String atlern;
  final String? icon;
  final Color? color;
  final String? read;
  final Color? colorButton;
  final String date;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: screenWidth * 0.17,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: screenWidth * 0.075,
                  backgroundImage: image != null
                      ? AssetImage(
                          image!,
                        )
                      : null,
                  child: image == null
                      ? const Icon(
                          Icons.person,
                          size: 30,
                        )
                      : null,
                ),
                verify != null
                    ? Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              verify!,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            height: screenHeight * 0.08,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  height: screenHeight * 0.025,
                  child: Row(
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      icon != null
                          ? Image.asset(
                              icon!,
                              height: 20,
                              fit: BoxFit.contain,
                              color: color,
                            )
                          : OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                                minimumSize: const Size(0, 5),
                                foregroundColor: Colors.red,
                                side: const BorderSide(color: Colors.red),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "SCAM",
                              ),
                            ),
                    ],
                  ),
                ),
                message != null
                    ? Text(
                        message!,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                        ),
                      )
                    : const SizedBox(),
                Row(
                  children: [
                    active != null
                        ? Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.asset(
                                active!,
                                width: 22,
                                height: 20,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : const SizedBox(),
                    Text(
                      detail,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            height: screenHeight * 0.08,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    read != null
                        ? Image.asset(
                            read!,
                            width: 20,
                            color: Colors.green,
                          )
                        : const SizedBox(),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                colorButton != null
                    ? Container(
                        width: screenWidth * 0.055,
                        height: screenHeight * 0.055,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorButton,
                        ),
                        child: Center(
                          child: Text(
                            atlern,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorButton,
                        ),
                        child: Center(
                          child: Text(
                            atlern,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
