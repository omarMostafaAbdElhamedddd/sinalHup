

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:signalhub/features/auth/login/presentation/view/loginView.dart';
import 'package:signalhub/features/signUp/presentation/view/signUpView.dart';
import 'package:signalhub/utilities/imagesPath.dart';
import 'package:signalhub/utilities/responsiveSize.dart';

import '../../widgets/customButton.dart';
import '../../widgets/versionText.dart';

class LoginOrSignUpView extends StatelessWidget {
  const LoginOrSignUpView({super.key});
static const String routeName = "/LoginOrSignUpView";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MyShapePage();
  }
}

class MyShapePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: const Color(0xff31006E),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xff31006E),
            Color(0xff5D05CC),
            Color(0xff31006E),
          ])
        ),
        child: Column(
          children: [
            ClipPath(
              clipper: BottomCurveClipper(),
              child: Container(
                height: SizeConfig.screenHeight! * .2,
                color: Colors.black,
                child: Center(
                  child: Image.asset(
                    Assets.logo,
                    height: 50,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
              ),
            ),

            Container(
              padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 40.h),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                                                    Custombutton(
                    text: "Login",
                    onPressed: () {
                      context.pushNamed('agree');
                    },
                  ),
                  const SizedBox(height: 15),
                                     Custombutton(
                     text: "Sign Up",
                     onPressed: () {
                       context.pushNamed('agree');
                     },
                   ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Versiontext(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);

    var firstControlPoint = Offset(size.width / 2, size.height + 50);
    var firstEndPoint = Offset(size.width, size.height - 50);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
