import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:signalhub/utilities/responsiveSize.dart';
import 'dart:ui';

import '../../../../utilities/imagesPath.dart';

class AgreeView extends StatelessWidget {
  static const String routeName = "/agree";

  const AgreeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.agreeBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              color: Colors.grey[800]!.withOpacity(0.9),
              borderRadius: BorderRadius.circular(16.w),
              border: Border.all(color: Colors.grey[600]!),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Disclaimer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'This application provides analyses and insights from analysts only and does not offer direct financial Signals. By using the app, you agree to the Terms and Conditions and the Privacy Policy.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.w),
                      ),
                    ),
                    onPressed: () {
                      // Navigate to login screen after agreement
                      context.go('/login');
                    },
                    child: Text(
                      'I Agree',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
