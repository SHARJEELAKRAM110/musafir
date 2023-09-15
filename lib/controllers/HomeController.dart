import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_count_down/timer_controller.dart';

class HomeController extends GetxController{
  CountdownController countdownController=CountdownController();
  TextEditingController textEditingController=TextEditingController();
  var massageOtpCode=''.obs;
  Future<void> checkAndRequestPermissions() async {
    // Check if permission is already granted
    if (await Permission.sms.status.isGranted) {
      // Permission is already granted, proceed with your logic here
      // For example, navigate to the screen where you read SMS messages
      // Navigator.push(context, MaterialPageRoute(builder: (context) => YourSmsReaderScreen()));
      return;
    }

    // If permission is denied, request it
    if (await Permission.sms.request().isGranted) {
      // Permission has been granted, proceed with your logic here
      // For example, navigate to the screen where you read SMS messages
      // Navigator.push(context, MaterialPageRoute(builder: (context) => YourSmsReaderScreen()));
    } else {
      // Permission has been denied.
      // You can handle this case based on your app's requirements.
    }
  }
  @override
  void onInit()async{
    super.onInit();
    print("ONINT");
    checkAndRequestPermissions();
    await SmsAutoFill().listenForCode();
  }
  @override
  void onReady(){
    super.onReady();
  }
  @override
  void onClose(){
    super.onClose();
    textEditingController.dispose();
    SmsAutoFill().unregisterListener();
  }
}