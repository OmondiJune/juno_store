
import 'package:get/get.dart';
import 'package:juno_store/auth/auth_rep.dart';
import 'package:juno_store/pages/HomePage.dart';
class OTPController extends GetxController {
  static OTPController get instance => Get.find();
  Future<void> verifyOTP(String otp) async {
    var isVerified = await AuthRepo.instance.verifyOTP(otp);
    isVerified? Get.offAll(const HomePage()): Get.back();
  }
}

