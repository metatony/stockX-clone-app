import 'package:flutter/material.dart';
import 'package:stock_x/onboarding/Signup/Sign_up.dart';
import 'package:stock_x/screens/welcome_screen.dart';

class CaptchaScreen extends StatefulWidget {
  const CaptchaScreen({super.key});

  @override
  State<CaptchaScreen> createState() => _CaptchaScreenState();
}

class _CaptchaScreenState extends State<CaptchaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/stockx text.png'),
              ),
              const SizedBox(
                width: 255,
                child: Text(
                  'Press & Hold to confirm you are a human (and not a bot)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                  height: 65,
                  minWidth: 300,
                  splashColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.lightBlueAccent)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const WelcomeScreen();
                      }),
                    );
                  },
                  child: const Text(
                    'Press & Hold',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Having a problem ?',
                  style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// style: OutlinedButton.styleFrom(
//                     side: const BorderSide(color: Colors.lightBlueAccent),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15))),
//                 onPressed: () {},
//                 child: const Text(
//                   'Press & Hold',
//                   style: TextStyle(
//                     color: Colors.lightBlueAccent,
//                   ),
//                 ),