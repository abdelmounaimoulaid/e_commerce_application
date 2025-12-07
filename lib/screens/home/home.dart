import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.bgColor,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min,
                  children: [

                     Image(height: 64, image: AssetImage(TImages.lightAppLogo)),
                    SizedBox(width: 12),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Shopino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: TColors.primary,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Your store in the future",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: TColors.tertiary,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Badge
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: TColors.bgAccent,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Iconsax.star, size: 14, color: TColors.accent),
                          SizedBox(width: 6),
                          Text(
                            "Nouvelle Collection",
                            style: TextStyle(
                              color: TColors.accent,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: TSizes.spaceBtwItems),

                    Text(
                      "Découvrez notre",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlayfairDisplay",
                        fontSize: TSizes.xl,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "sélection exclusive",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlayfairDisplay",
                        fontSize: TSizes.xl,
                        fontWeight: FontWeight.bold,
                        color: TColors.primary,
                      ),
                    ),

                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Description
                    Text(
                      "Des produits soigneusement sélectionnés pour sublimer votre quotidien.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: TSizes.md,
                        fontWeight: FontWeight.w400,
                        fontFamily: "DMSans",
                        color: TColors.tertiary,
                      ),
                    ),

                    SizedBox(height: TSizes.spaceBtwSections),

                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              TSizes.borderRadiusLg,
                            ),
                          ),
                        ),
                        padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(vertical: 24, horizontal: 40),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          TColors.primary,
                        ),
                      ),
                      child: Text(
                        "Voir les produits ->",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: TSizes.md,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    SizedBox(height: TSizes.spaceBtwSections3xl),

                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Product 1
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/product-1.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(width: TSizes.spaceBtwSections),

                        // Product 2
                        Transform.translate(
                          offset: const Offset(0, -8),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/product-2.jpeg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: TSizes.spaceBtwSections),

                        // Product 3
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/product-3.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),)
       
      ),
    );
  }
}
