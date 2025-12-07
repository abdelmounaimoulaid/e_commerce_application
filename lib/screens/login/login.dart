import 'package:e_commerce/screens/home/home.dart';
import 'package:e_commerce/screens/login/state/login_state.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final validateEmail = THelperFunctions.validateEmail;
    final validatePassword = THelperFunctions.validatePassword;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: TColors.bgColor,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),

            child: Padding(
              padding: TSpacingStyles.paddingWithAppBarHeight,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(height: 100, image: AssetImage(TImages.lightAppLogo)),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      "Shopino",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "DMSans",
                        color: TColors.primary,
                      ),
                    ),
                    Text(
                      "Your store in the future",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: "DMSans",

                        color: TColors.tertiary,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: TSizes.spaceBtwSections,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: validateEmail,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Iconsax.send_1_copy),
                                prefixIconColor: TColors.tertiary,

                                labelText: "E-Mail",
                                labelStyle: TextStyle(color: TColors.tertiary , fontFamily: "DMSans"),

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: TColors.tertiary,
                                    width: 1.5,
                                  ),
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: TColors.primary,
                                    width: 2,
                                  ),
                                ),

                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                ),

                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: TSizes.spaceBtwInputFields),

                            TextFormField(
                              obscureText: _obscurePassword,
                              validator: validatePassword,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Iconsax.password_check),
                                prefixIconColor: TColors.tertiary,

                                labelText: "Password",
                                labelStyle: TextStyle(color: TColors.tertiary, fontFamily: "DMSans"),

                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                  child: Icon(
                                    _obscurePassword
                                        ? Iconsax.eye_slash
                                        : Iconsax.eye,
                                  ),
                                ),
                                suffixIconColor: TColors.tertiary,

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: TColors.tertiary,
                                    width: 1.5,
                                  ),
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: TColors.primary,
                                    width: 2,
                                  ),
                                ),

                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                ),

                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: TSizes.spaceBtwInputFields),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen(),
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: TColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    side: BorderSide(
                                      color: TColors.primary,
                                      width: 2,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 22,
                                  ),
                                ),
                                child: Text(
                                  "Se connecter",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans"
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
