import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

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


// class SplashScreen extends StatelessWidget {
//   static const routeName = "SplashScreen";
//
//  // final isLoged=sharedPref?.getBool('isLoged');
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: AnimatedSplashScreen(
//         backgroundColor: Colors.brown.shade50,
//         splashIconSize: 150,
//         splash: Image.asset("assets/images/logo.png",
//
//           ),
//
//         nextScreen:HomeScreen(),
//         //isLoged==true?LayoutScreen(): LoginScreen(),
//         splashTransition: SplashTransition.fadeTransition,
//
//         //pageTransitionType: PageTransitionType.downToUp,
//       ),
//     );
//   }
// }
class SplashPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  VideoPlayerController? _controller;
  bool _visible = false;

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _controller = VideoPlayerController.asset("assets/images/splash.mp4");
    _controller?.initialize().then((_) {
      _controller?.setLooping(true);
      Timer(Duration(milliseconds: 100), () {
        setState(() {
          _controller?.play();
          _visible = true;
        });
      });
    });

    Future.delayed(Duration(seconds: 41), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(),),
              (e) => false);
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_controller != null) {
      _controller?.dispose();
      _controller = null;
    }
  }

  _getVideoBackground() {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 1000),
      child: VideoPlayer(_controller!),
    );
  }

  _getBackgroundColor() {
    return Container(color: Colors.transparent //.withAlpha(120),
    );
  }

  _getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              _getVideoBackground(),
              TextButton(onPressed: (){
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),),
                        (e) => false);

              },
                  child:Text("...تخطي",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),)),
            ],
          ),
        ),
      ),
    );
  }
}