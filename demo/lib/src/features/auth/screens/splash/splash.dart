import "package:demo/src/constants/colors.dart";
import "package:demo/src/constants/image_str.dart";
import "package:demo/src/constants/sizes.dart";
import "package:demo/src/constants/text_str.dart";
import "package:demo/src/features/auth/controllers/splashscreencontroller.dart";
import "package:demo/src/features/auth/screens/start/Ascreen.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_core/src/get_main.dart";

class SplashSc extends StatelessWidget {
  SplashSc({super.key});

  final upwardAnimationController = Get.put(UpwardAnimationController());

  @override
  Widget build(BuildContext context) {
    upwardAnimationController.startAnimate();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Obx(
              //observer  which is going to be observerd    //simmilar to statefull
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 2600),
                top: upwardAnimationController.animate.value ? -17 : -49,
                left: upwardAnimationController.animate.value ? -18 : -49,
                child: Image(
                  image: AssetImage(
                    mSplashTopIcon,
                  ),
                  fit: BoxFit.fill,
                  // height: 150,
                  width: 300,
                ),
              ),
            ),
            Obx(
              //observer  which is going to be observerd    //simmilar to statefull
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                top: 200,
                left: upwardAnimationController.animate.value
                    ? mDefaultSize
                    : -30,
                right: -30,
                child: AnimatedOpacity(
                  opacity: upwardAnimationController.animate.value ? 1 : 0,
                  duration: Duration(milliseconds: 1600),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mAppName,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        mAppTagline,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              //observer  which is going to be observerd    //simmilar to statefull
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                top: 370,
                left: 10,
                bottom: upwardAnimationController.animate.value ? 60 : -1,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 2500),
                  opacity: upwardAnimationController.animate.value ? 1 : 0,
                  child: Image(
                    image: AssetImage(mWelcomeimg),
                    height: 350,
                  ),
                ),
              ),
            ),
            Obx(
              //observer  which is going to be observerd    //simmilar to statefull
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                // top: 890,
                left: 420,
                bottom: upwardAnimationController.animate.value ? 60 : 0,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 2000),
                  opacity: upwardAnimationController.animate.value ? 1 : 0,
                  child: Container(
                    width: mSplashContainerSize,
                    height: mSplashContainerSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: mPrimaryColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
