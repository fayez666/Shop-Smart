import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopsmart_users/widgets/title_text.dart';

class CustomAppName extends StatelessWidget {
  const CustomAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        period: const Duration(seconds: 3),
        baseColor: Colors.purple,
        highlightColor: Colors.red,
        child: const TitlesTextWidget('shop smart', label: 'Shop Smart'));
  }
}
