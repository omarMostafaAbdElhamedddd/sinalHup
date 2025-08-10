import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:signalhub/features/loginOrSignUp/loginOrSignUp.dart';
`import 'package:signalhub/features/auth/login/presentation/view/loginView.dart';
import 'package:signalhub/features/signUp/presentation/view/signUpView.dart';
import 'package:signalhub/features/agreeView/presentation/view/agreeView.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: 'splash',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: LoginOrSignUpView.routeName,
        name: 'loginOrSignUp',
        builder: (context, state) => const LoginOrSignUpView(),
      ),
      GoRoute(
        path: Loginview.routeName,
        name: 'login',
        builder: (context, state) => const Loginview(),
      ),
      GoRoute(
        path: SignupView.routeName,
        name: 'signup',
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: AgreeView.routeName,
        name: 'agree',
        builder: (context, state) => const AgreeView(),
      ),
    ],
  );
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToLoginOrSignUp();
  }

  void _navigateToLoginOrSignUp() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      context.pushNamed('loginOrSignUp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
            colors: [
              Color(0xff31006E),
              Color(0xff5D05CC),
              Color(0xff200048),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: const SafeArea(
          child: Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              height: 120,
              width: 120,
            ),
          ),
        ),
      ),
    );
  }
} 