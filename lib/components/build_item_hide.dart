import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildItemHide extends StatelessWidget {
  const BuildItemHide({
    super.key,
    this.image,
    this.name = "",
    this.verify,
    this.emoji,
    this.add,
  });

  final String? image;
  final String name;
  final String? verify;
  final String? emoji;
  final String? add;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          minVerticalPadding: 18,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              emoji != null
                  ? Image.asset(
                      emoji!,
                      width: 22,
                      height: 22,
                      color: Colors.amber[600],
                    )
                  : const SizedBox(),
            ],
          ),
          leading: image != null
              ? CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(
                    image!,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SvgPicture.asset(
                    add!,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
        verify != null
            ? Positioned(
                left: 43,
                bottom: 5,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 9,
                    backgroundImage: AssetImage(verify!),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
