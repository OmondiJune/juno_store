import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:juno_store/pages/HomePage.dart';
import 'package:juno_store/pages/failure.dart';

import '../main.dart';

class AuthRepo extends GetxController{
  static AuthRepo get instance =>Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId =''.obs;

  @override

  void onReady(){
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null? Get.offAll(()=>const SplashScreen()):Get.offAll(()=>const HomePage());
  }
  Future<void> createUserWithEmailAndPassword(String email,String password)async{
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value !=null ? Get.offAll(()=>const HomePage()):Get.to(()=>const SplashScreen());
    } on FirebaseAuthException catch (e) {
      // TODO
      final exception = SignUpFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION- ${exception.textMessage}');
      throw exception;
    }catch(_){
      const exception = SignUpFailure();
      print('EXCEPTION- ${exception.textMessage}');
      throw exception;
    }
  }
  Future<void> phoneAuthentication(String phoneNo)async{
   await _auth.verifyPhoneNumber(
       phoneNumber: phoneNo,
       verificationCompleted:(credential)async{await _auth.signInWithCredential(credential);},
       verificationFailed: (e){
         if(e.code=='incorrect Phone Number'){
           Get.snackbar('Error', 'Phone number is incorrect');
         }else{
           Get.snackbar('Something went wrong', 'Try Again!');
         }
       },
       codeSent: (verificationId,resendToken){
         this.verificationId.value = verificationId;
    }, codeAutoRetrievalTimeout: (verificationId){
    this.verificationId.value = verificationId;
    }
    );
}
 Future<bool> verifyOTP(String otp) async{
    var credentials= await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
    return credentials.user !=null?true:false;
 }
  Future<void> loginUserWithEmailAndPassword(String email,String password)async{
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException {
      // TODO
    }catch(_){}
  }
  Future<void> logout()async=>await _auth.signOut();
}