// //import 'package:sportify/screens/OTPScrean.dart';

// // void main() {
// //   runApp(myapp());
// // }

// // class myapp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: OTPScreen(),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:sportify/modules/Splash.dart';
// import 'package:sportify/modules/loginScreen.dart';
// import 'package:sportify/modules/onboardScreen.dart';
// //import 'package:sportify/modules/adminScreen.dart';
// import 'package:sportify/modules/userScreens/OTPScrean.dart';
// import 'package:sportify/modules/userScreens/Signup.dart';
// import 'package:sportify/modules/userScreens/adminScreen.dart';
// import 'package:sportify/modules/userScreens/book.dart';
// import 'package:sportify/modules/welcomeScreen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: "/",
//       routes: {
//         "/": (context) => BookingCompleteScreen(),
//        // "/": (context) => const SplashScreen(),
//         '/welcome': (context) => const Welcome(),
//         '/book': (context) => const CompleteScreen(),
//         "/login": (context) => const LoginScreen(),
//         "/signup": (context) => const SignupScreen(),
//         "/OTPScreen": (context) => OTPScreen(),
//         "/OnboardScreen": (context) => const OnboardScreen(
//               image: '',
//               title: '',
//               description: '',
//             ),
//       },
//     );
//   }
// }


// ignore: unused_import
import 'package:sportify/modules/userScreens/book%202.dart';

import 'booking_complete_screen.dart'; // Assuming the screen is in a separate file
// ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: BookingCompleteScreen(), // Call the BookingCompleteScreen
    );
  }
}
