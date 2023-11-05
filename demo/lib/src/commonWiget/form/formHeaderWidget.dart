import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../constants/text_str.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({
    super.key,
    required this.size,
    required this.img,
    required this.title,
    required this.subtitle,
  });
  final String img, title, subtitle;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(img),
          height: size.height * 0.18,
        ),
        Text(
          title,
          textScaleFactor: 1.1,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
        SizedBox(
          height: mDefaultSize,
        )
      ],
    );
  }
}
