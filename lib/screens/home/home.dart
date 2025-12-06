import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: TColors.bgColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyles.paddingWithAppBarHeight,

            child: Column(
              children: [
                Row(
                  children: [
                    Image(height: 32, image: AssetImage(TImages.lightAppLogo)),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shopino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: TColors.primary,
                          ),
                        ),
                        Text(
                          "Your store in the future",
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w300,
                            color: TColors.tertiary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
