import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'HomeViwBody.dart';

// class SplashScreen extends StatelessWidget {
//   // Function to read text file content
//   Future<String?> _readFileContent(String path) async {
//     return await rootBundle.loadString(path);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text File Image Example'),
//       ),
//       body: Center(
//         child: FutureBuilder<String?>(
//           future: _readFileContent('assas/splash.txt'),
//           builder: (context, snapshot) {
//             if (snapshot.hasData && snapshot.data != null) {
//               // Assuming the content of the text file is the base64 encoded image data
//               String base64Image = snapshot.data!;
//               return Image.memory(
//                 // Decoding base64 to bytes
//                 base64.decode(base64Image),
//               );
//             } else if (snapshot.hasError) {
//               return Text('Error reading file: ${snapshot.error}');
//             } else {
//               return CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
///image///////////////////////


class SplashScreen extends StatelessWidget {
  static const routeName = "SplashScreen";

 // final isLoged=sharedPref?.getBool('isLoged');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedSplashScreen(
        backgroundColor: Colors.brown.shade50,
        splashIconSize: 150,
        splash: Image.asset("assets/images/logo.png",

          ),

        nextScreen:HomeScreen(),
        //isLoged==true?LayoutScreen(): LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,

        //pageTransitionType: PageTransitionType.downToUp,
      ),
    );
  }
}
