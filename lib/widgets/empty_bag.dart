import 'package:flutter/material.dart';
import 'package:shopsmart_users/widgets/subtitle_text.dart';

class EmptyBag extends StatelessWidget {
  const EmptyBag({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  final String imagePath, title, subtitle, buttonText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: size.height * 0.35,
              width: size.width,
            ),
            const SizedBox(height: 20),
            const SubtitleTextWidget(
              label: 'Whoops',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            SubtitleTextWidget(
                label: title, fontSize: 24, fontWeight: FontWeight.bold),
            const SizedBox(height: 20),
            SubtitleTextWidget(
              label: subtitle,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                elevation: 1,
              ),
              child: SubtitleTextWidget(
                  label: buttonText,
                  fontSize: 22,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
