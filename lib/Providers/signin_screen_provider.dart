import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SignInScreenProvider extends ChangeNotifier {
  bool location = false;

  bool notification = false;

  bool camera = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void updateLocation(val){
    location = val ;
    location ? Fluttertoast.showToast(
        msg: "Location services enabled successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0.sp
    ) : Fluttertoast.showToast(
        msg: "Location services disabled successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0.sp
    );
    notifyListeners();
  }
  void updateCamera(val){
    camera = val ;
    camera
        ? Fluttertoast.showToast(
        msg: "Camera access granted successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0.sp)
        : Fluttertoast.showToast(
        msg: "Camera access removed...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0.sp);
    notifyListeners();
  }
  void updateNotification(val){
    notification = val ;
    notification ? Fluttertoast.showToast(
        msg: "Push notification services enabled successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0.sp
    ) : Fluttertoast.showToast(
        msg: "Push notification services disabled successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0.sp
    );
    notifyListeners();
  }
}
