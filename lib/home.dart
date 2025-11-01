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
    final int _selectedindex =0;
    _controller=VideoPlayerController.asset('assets/videos/video.mp4')
    ..initialize().then((_) {
    // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    setState(() {
      _controller.play();
      _controller.setLooping(true);

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
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AspectRatio(
                   aspectRatio: 0.9,

                    child: Transform.scale(
                      scale: 1.5,

                        child: VideoPlayer(_controller))),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
                right: 0,
                child:Container(


                ) )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFF),
        selectedFontSize:,
        
        selectedItemColor: Colors.black,
        currentIndex: 0,
        onTap: (index){
          
        },

          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled ),label: 'Home'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/heart.png'),label: 'Likes'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/bag.png'),label: 'Bag'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/profile.png'),label: 'Profile'),

            
          ]),
    );
  }
}
