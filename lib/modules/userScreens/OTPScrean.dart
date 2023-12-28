import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async'; // Import this for Timer
import 'package:sportify/shared/sharedComponents/components.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _firstDigitController = TextEditingController();
  final TextEditingController _secondDigitController = TextEditingController();
  final TextEditingController _thirdDigitController = TextEditingController();
  final TextEditingController _fourthDigitController = TextEditingController();
  Timer? _timer;
  int _start = 120; // 2 minutes in seconds

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer?.cancel();
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 85.79),
                Text(
                  'Verification Code',
                  style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: fdefaultColor),
                ),
                SizedBox(height: 15),
                Text(
                  'we have send the code verification to',
                  style: GoogleFonts.outfit(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: sdefaultcolor),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      '0103******83',
                      style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: sdefaultcolor),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'Change phone number?',
                        style: GoogleFonts.outfit(
                            fontSize: 15, color: fdefaultColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 1),
                    OTPTextField(
                        controller: _firstDigitController,
                        onChanged: (value) {}),
                    SizedBox(width: 1),
                    OTPTextField(
                        controller: _secondDigitController,
                        onChanged: (value) {}),
                    SizedBox(width: 1),
                    OTPTextField(
                        controller: _thirdDigitController,
                        onChanged: (value) {}),
                    SizedBox(width: 1),
                    OTPTextField(
                        controller: _fourthDigitController,
                        onChanged: (value) {}),
                    SizedBox(width: 1),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Resend code after',
                      style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: sdefaultcolor),
                    ),
                    // Text(
                    //   ' 1:36',
                    //   style: TextStyle(
                    //       fontSize: 15,
                    //       fontWeight: FontWeight.normal,
                    //       color: fdefaultColor),
                    // ),

                    Text(
                      ' ${_start ~/ 60}:${(_start % 60).toString().padLeft(2, '0')}',
                      style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: fdefaultColor),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _confirmButton(context),
                      SizedBox(
                        width: 25,
                      ),
                      _resendButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _confirmButton(BuildContext context) {
    return fButton(
      text: 'Confirm',
      function: () {},
    );
  }

  Widget _resendButton(BuildContext context) {
    return DefaultButton(
      text: 'Resend',
      width: 170,
      height: 50,
      function: () {
        setState(() {
          _start = 120;
          startTimer();
        });
      },
    );
  }
}
