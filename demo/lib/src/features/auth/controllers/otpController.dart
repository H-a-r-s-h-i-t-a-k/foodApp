import 'package:demo/src/features/home/screen/home/home.dart';
import 'package:demo/src/repository/auth_repo/authentication_repo.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();
  void verifiedOTP(String otp) async {
    var isVerified = await AuthenticationRepo.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const HomeScreen()) : Get.back();
  }
}
