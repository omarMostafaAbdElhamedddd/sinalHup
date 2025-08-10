
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signalhub/utilities/styleHelper.dart';

class Loginview extends StatelessWidget {
  static const String routeName = "/login";
  
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff31006E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyleHelper.of(context).s32RegTextStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.h),
            TextField(
              style: TextStyleHelper.of(context).s16RegTextStyle.copyWith(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyleHelper.of(context).s16RegTextStyle.copyWith(
                  color: Colors.white70,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.w),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.w),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            TextField(
              obscureText: true,
              style: TextStyleHelper.of(context).s16RegTextStyle.copyWith(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyleHelper.of(context).s16RegTextStyle.copyWith(
                  color: Colors.white70,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.w),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.w),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                ),
                onPressed: () {
                  // TODO: Implement login logic
                },
                child: Text(
                  'Login',
                  style: TextStyleHelper.of(context).s16SemiBoldTextStyle.copyWith(
                    color: const Color(0xff31006E),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
