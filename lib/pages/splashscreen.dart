import 'package:coffeeshop/main.dart';
import 'package:coffeeshop/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashcoffee(),
  ));
}

class splashcoffee extends StatefulWidget {
  @override
  State<splashcoffee> createState() => _splashcoffeeState();
}

class _splashcoffeeState extends State<splashcoffee> {
  //  @override
  // void initState() {
  //   Coffeesplash();
  //   super.initState();
  // }
  // Future<void>Coffeesplash()async{
  //   await Future.delayed(Duration(seconds: 4));
  //   Navigator.push(context, MaterialPageRoute(builder: (builder)=>MyApp()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset("assets/images/animations/animation_lkatvlpz.json")
            LottieBuilder.asset(
                'assets/images/animations/animation_lkatvlpz.json'),
                Center(child: Text('Brew Day',style: GoogleFonts.plaster(fontSize:30 ))),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     TypewriterAnimatedText(
            //       'Brew Day',
            //       textStyle: const TextStyle(
            //         fontSize: 45.0,
            //         fontWeight: FontWeight.bold,
            //       ),
            //       speed: const Duration(milliseconds: 500),
            //     ),
            //   ],
            //   totalRepeatCount: 3,
            //   pause: const Duration(milliseconds: 500),
            //   displayFullTextOnTap: true,
            //   stopPauseOnTap: true,
            // ),

            SizedBox(height: 20),
            Text(
              'How do you like your coffee?',
              style:
                  TextStyle(color: Colors.brown, fontWeight: FontWeight.w700,fontSize: 18),
            ),
            SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Text('Enter the shop'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.brown)),
            )
          ],
        ));
  }
}
