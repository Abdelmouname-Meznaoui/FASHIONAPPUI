import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'customAppBar.dart';
import 'package:video_player/video_player.dart';



class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller=VideoPlayerController.asset('assets/videos/video.mp4')
    ..initialize().then((_) {
    // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    setState(() {
      _controller.play();

    });
    });
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customappbar( title:'Runway',prefix: 'assets/images/menuicon.png', suffix: 'assets/images/notif.png'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
               aspectRatio: 0.9,

                child: VideoPlayer(_controller)),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
