 import 'package:flutter/material.dart';
 import 'package:theme_board/home.dart';

 class WelcomeScreen extends StatelessWidget {
   const WelcomeScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         width: double.infinity,
         height: MediaQuery.of(context).size.height,
         decoration: const BoxDecoration(
           gradient: LinearGradient(
             colors: [
               Color(0xFF212121),
               Color(0xFFD6D6D6),
             ],
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
             stops: [0.0, 1.0],
             tileMode: TileMode.clamp,
           ),
         ),
         child: Center(
           child: Stack(
             children: [
               Positioned(
                 bottom: 350,
                 left: 0,
                 right: 0,
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           "Theme",
                           style: TextStyle(fontSize: 40, color: Colors.black),
                         ),
                         const SizedBox(width: 8),
                         Text(
                           "Board",
                           style: TextStyle(fontSize: 40, color: Colors.white),
                         ),
                       ],
                     ),
                     const SizedBox(height: 16),
                     const Text(
                       "Aesthetic Wallpapers.",
                       style: TextStyle(fontSize: 20, color: Colors.white),
                     ),
                   ],
                 ),
               ),
               Positioned(
                 bottom: 100,
                 left: 0,
                 right: 0,
                 child: Padding(
                   padding: const EdgeInsets.all(40.0),
                   child: GestureDetector(
                     onTap: () {
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Home()));
                     },
                     child: Container(
                       height: 50,
                       decoration: const BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(30)),
                       ),
                       child: const Center(
                         child: Text(
                           "Get Started",
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
     );
   }
 }

