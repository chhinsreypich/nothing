// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 74, 140, 215),
              Color.fromARGB(255, 217, 222, 222)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 20),

              // WELCOME TO LU COFFEE TEXT
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      AppLocalizations.of(context)!.welcometoLUCoffee,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.assistant(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(222, 20, 20, 20),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              // COFFEE IMAGE
              Opacity(
                opacity: 0.80,
                child: Padding(
                  padding: const EdgeInsets.only(left: 90, right: 90),
                  child: Image.asset(
                    "lib/images/introPic/Coffee_Cup.png",
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                AppLocalizations.of(context)!.coffeeMakesEverythingBetter,
                style: GoogleFonts.assistant(
                  fontSize: 22,
                  color: const Color.fromARGB(255, 2, 1, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 20),

              // GET STARTED BUTTON
              MyButton(
                text: AppLocalizations.of(context)!.getStarted,
                onTap: () {
                  // Tap to the Sign in and Sign up pages
                  Navigator.pushNamed(context, "/signIn");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_gen/gen_l10n/app_localization.dart';
// import '../../components/my_button.dart';

// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xFF4A90E2), Color(0xFF50C9C3)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(25.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 const SizedBox(height: 20),

//                 // WELCOME TO LU COFFEE TEXT
//                 Padding(
//                   padding: const EdgeInsets.only(left: 0, right: 10),
//                   child: Text(
//                     AppLocalizations.of(context)!.welcometoLUCoffee,
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.k2d(
//                       fontSize: 48,
//                       fontWeight: FontWeight.bold,
//                       color: const Color.fromARGB(222, 20, 20, 20),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 15,
//                 ),

//                 // COFFEE IMAGE
//                 Opacity(
//                   opacity: 0.89,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 85, right: 85),
//                     child: Image.asset(
//                       "lib/images/introPic/Coffee_Cup.png",
//                     ),
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 15,
//                 ),

//                 Text(
//                   AppLocalizations.of(context)!.coffeeMakesEverythingBetter,
//                   style: GoogleFonts.ibarraRealNova(
//                     fontSize: 22,
//                     color: const Color.fromARGB(255, 2, 1, 1),
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 // GET STARTED BUTTON
//                 MyButton(
//                   text: AppLocalizations.of(context)!.getStarted,
//                   onTap: () {
//                     // Tap to the Sign in and Sign up pages
//                     Navigator.pushNamed(context, "/signIn");
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
