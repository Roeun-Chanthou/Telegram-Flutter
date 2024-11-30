import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildList extends StatelessWidget {
  const BuildList({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: SvgPicture.asset(
          icon,
          width: 28,
          colorFilter: ColorFilter.mode(
            Colors.grey[600]!,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
