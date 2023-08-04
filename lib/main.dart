import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/screen/home_page.dart';
import 'package:bank_sha/ui/screen/onboarding_page.dart';
import 'package:bank_sha/ui/screen/pin_page.dart';
import 'package:bank_sha/ui/screen/profile_edit_page.dart';
import 'package:bank_sha/ui/screen/profile_edit_pin_page.dart';
import 'package:bank_sha/ui/screen/profile_edit_succes.dart';
import 'package:bank_sha/ui/screen/profile_page.dart';
import 'package:bank_sha/ui/screen/sign_in_page.dart';
import 'package:bank_sha/ui/screen/sign_up_page.dart';
import 'package:bank_sha/ui/screen/sign_up_set_ktp_page.dart';
import 'package:bank_sha/ui/screen/sign_up_set_profile_page.dart';
import 'package:bank_sha/ui/screen/sign_up_success_page.dart';
import 'package:bank_sha/ui/screen/splash_page.dart';
import 'package:bank_sha/ui/screen/topup_amount_page.dart';
import 'package:bank_sha/ui/screen/topup_page.dart';
import 'package:bank_sha/ui/screen/topup_succes_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(
          color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const Splashpage(),
        '/onboarding' :(contex) => const OnBoardingPage(),
        '/sign-in' : (context) => const SignInPage(),
        '/sign-up' : (context) => const SignUpPage(),
        '/sign-up-set-profile' : (context) => const SignUpSetProfilePage(),
        '/sign-up-set-ktp' : (context) => const SignUpSetKtpPage(),
        '/sign-up-success' : (context) => const SignUpSuccessPage(),
        '/home' : (context) => const HomePage(),
        '/profile' :(context) => const ProfilePage(),
        '/pin':(context) => const PinPage(),
        '/profile-edit' : (context) => const ProfileEditPage(),
        '/profile-edit-pin':(context) => const ProfileEditPinPage(),
        '/profile-edit-succes':(context) => const ProfileEditSuccesPage(),
        '/topup' :(context) => const TopUpPage(),
        '/topup-amount':(context) => const TopupAmountPage(),
        '/topup-succes':(context) => const TopupSuccesPage(),
      },
    );
  }
}