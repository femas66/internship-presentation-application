import 'package:absensipkl/base/common/colors.dart';
import 'package:absensipkl/base/router/navigation.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

ToastificationItem toastSuccess(
    BuildContext context, String title, String description) {
  return toastification.show(
    context: context,
    type: ToastificationType.success,
    style: ToastificationStyle.flat,
    autoCloseDuration: const Duration(seconds: 5),
    title: Text(title),
    // you can also use RichText widget for title and description parameters
    description: RichText(text: TextSpan(text: description)),
    alignment: Alignment.topRight,
    direction: TextDirection.ltr,
    animationDuration: const Duration(milliseconds: 300),
    icon: const Icon(Icons.check),
    primaryColor: primaryGreen,
    backgroundColor: primaryGreen,
    foregroundColor: whiteColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      )
    ],
    showProgressBar: true,
    closeButtonShowType: CloseButtonShowType.onHover,
    closeOnClick: true,
    pauseOnHover: true,
    dragToClose: true,
    applyBlurEffect: true,
    callbacks: ToastificationCallbacks(
      onTap: (toastItem) {},
      onCloseButtonTap: (toastItem) {},
      onAutoCompleteCompleted: (toastItem) {},
      onDismissed: (toastItem) {},
    ),
  );
}

ToastificationItem toastWarning(
    BuildContext context, String title, String description) {
  return toastification.show(
    context: context,
    type: ToastificationType.warning,
    style: ToastificationStyle.flatColored,
    autoCloseDuration: const Duration(seconds: 5),
    title: Text(title),
    // you can also use RichText widget for title and description parameters
    description: RichText(text: TextSpan(text: description)),
    alignment: Alignment.topRight,
    direction: TextDirection.ltr,
    animationDuration: const Duration(milliseconds: 300),
    primaryColor: primaryYellow,
    backgroundColor: primaryYellow,
    foregroundColor: whiteColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      )
    ],
    showProgressBar: true,
    pauseOnHover: true,
    dragToClose: true,
    applyBlurEffect: true,
    callbacks: ToastificationCallbacks(
      onTap: (toastItem) {},
      onCloseButtonTap: (toastItem) {},
      onAutoCompleteCompleted: (toastItem) {},
      onDismissed: (toastItem) {},
    ),
  );
}

ToastificationItem toastDanger(
    BuildContext context, String title, String description) {
  return toastification.show(
    context: context,
    type: ToastificationType.error,
    style: ToastificationStyle.flatColored,
    autoCloseDuration: const Duration(seconds: 5),
    title: Text(title),
    // you can also use RichText widget for title and description parameters
    description: RichText(text: TextSpan(text: description)),
    alignment: Alignment.topRight,
    direction: TextDirection.ltr,
    animationDuration: const Duration(milliseconds: 300),
    primaryColor: primaryRed,
    backgroundColor: primaryRed,
    foregroundColor: whiteColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      )
    ],
    showProgressBar: true,
    pauseOnHover: true,
    dragToClose: true,
    applyBlurEffect: true,
    callbacks: ToastificationCallbacks(
      onTap: (toastItem) {},
      onCloseButtonTap: (toastItem) {},
      onAutoCompleteCompleted: (toastItem) {},
      onDismissed: (toastItem) {},
    ),
  );
}
