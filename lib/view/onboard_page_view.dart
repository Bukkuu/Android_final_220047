// import 'package:flutter/material.dart';
// import 'package:mobile_final_project/view/splash_page_view.dart';

// class OnboardingPageView extends StatelessWidget {
//   const OnboardingPageView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, String>> onboardData = [
//       {
//         "image": "assets/images/1.jpeg",
//         "title": "Welcome to Gemsera",
//         "description": "Discover stunning earrings tailored for you.",
//       },
//       {
//         "image": "assets/images/2.jpeg",
//         "title": "Exclusive Designs",
//         "description": "Browse through our exclusive and handcrafted designs.",
//       },
//       {
//         "image": "assets/images/3.jpeg",
//         "title": "Easy Shopping",
//         "description": "Shop with ease and enjoy a seamless experience.",
//       },
//     ];

//     return Scaffold(
//       backgroundColor: Colors.brown[50],
//       body: PageView.builder(
//         itemCount: onboardData.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(onboardData[index]["image"]!, height: 250),
//                 const SizedBox(height: 20),
//                 Text(
//                   onboardData[index]["title"]!,
//                   style: const TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Color.fromARGB(255, 193, 127, 29),
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 15),
//                 Text(
//                   onboardData[index]["description"]!,
//                   style: const TextStyle(fontSize: 18, color: Colors.brown),
//                   textAlign: TextAlign.center,
//                 ),
//                 if (index == onboardData.length - 1) const SizedBox(height: 30),
//                 if (index == onboardData.length - 1)
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const SplashPage(),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color.fromARGB(255, 193, 127, 29),
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                     ),
//                     child: const Text(
//                       'Get Started',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
