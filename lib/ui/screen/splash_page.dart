

import 'package:bank_sha/blocs/auth/auth_bloc.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgrounsColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          }

          if (state is AuthFailed) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/onboarding', (route) => false);
          }
        },
        child: Center(
          child: Container(
            width: 155,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_dark.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// class Splashpage extends StatefulWidget {
//   const Splashpage({super.key});

//   @override
//   State<Splashpage> createState() => _SplashpageState();
// }

// class _SplashpageState extends State<Splashpage> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(const Duration(seconds: 3), () {
//       Navigator.pushNamedAndRemoveUntil(
//           context, '/onboarding', (route) => false);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: darkBackgrounsColor,
//       body: Center(
//         child: Container(
//           width: 155,
//           height: 50,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/img_logo_dark.png'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
