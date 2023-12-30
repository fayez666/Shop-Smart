import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shopsmart_users/widgets/subtitle_text.dart';

class CustomListTile extends StatelessWidget {
  final String label, imagePath;
  final Function onTap;
  const CustomListTile({
    super.key,
    required this.label,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          height: 30,
        ),
        title: SubtitleTextWidget(label: label),
        trailing: const Icon(IconlyLight.arrowRight2),
        onTap: onTap(),
      ),
    );
  }
}
