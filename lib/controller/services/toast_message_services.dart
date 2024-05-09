import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:sizer/sizer.dart';

class ToastService {
  static sendScaffoldAlert(
      {required String msg,
      required String toastStatus,
      required BuildContext context}) {
    showToastWidget(
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300)),
        child: Row(
          children: [
            Icon(
              toastStatus == "SUCCESS"
                  ? Icons.check_circle
                  : toastStatus == 'ERROR'
                      ? Icons.warning_rounded
                      : Icons.warning_rounded,
              color: toastStatus == "SUCCESS" ? Colors.green : Colors.red,
            ),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              width: 68.w,
              child: Text(
                msg,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12.sp),
              ),
            )
          ],
        ),
      ),
      animation: StyledToastAnimation.slideFromTop,
      reverseAnimation: StyledToastAnimation.slideFromTop,
      context: context,
      duration: Duration(seconds: 5),
      position: StyledToastPosition.top,
    );
  }
}
