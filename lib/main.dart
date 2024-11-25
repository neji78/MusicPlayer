// import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              Scaffold(
                body: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Song Name',
                          style: TextStyle(
                            fontFamily: 'Jaro',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'artist',
                          style: TextStyle(
                            fontFamily: 'Jaro',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdrag05YteIARsVej5IVh0NGiZr4wU8gJIsQ&s"),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'My Palylist',
                          style: TextStyle(
                            fontFamily: 'Jaro',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 20,
                          padding: EdgeInsets.only(left: 20.0),
                          itemBuilder: (context, position) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30.0, // Custom width
                                    height: 30.0, // Custom height
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        print('Floating Action Button Pressed');
                                      },
                                      shape: CircleBorder(),
                                      child: Icon(Icons.play_arrow_rounded),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Song Name',
                                      style: TextStyle(
                                        fontFamily: 'Jaro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 30.0, // Custom width
                                    height: 30.0, // Custom height
                                    margin: EdgeInsets.only(right: 20.0),
                                    // padding: EdgeInsets.only(right: 20.0),
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        print('Floating Action Button Pressed');
                                      },
                                      shape: CircleBorder(),
                                      child: Icon(Icons.favorite_rounded),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_rounded)),
              Tab(icon: Icon(Icons.check_circle_rounded)),
              Tab(icon: Icon(Icons.shuffle_rounded)),
              Tab(icon: Icon(Icons.search_rounded)),
              Tab(icon: Icon(Icons.person_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}

// class MusicPlayer extends StatelessWidget {
//   MusicPlayer({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       //appBar: AppBar(),
//       home: MusicBody(
//         onPlay: (){
//           // codec.intiPlayer('C://Users/pars/Desktop/music/test.mp3');
//         },
//       ),
//     );
//   }
// }
//
// class MusicBody extends StatelessWidget {
//   final VoidCallback onPlay;
//   MusicBody({required this.onPlay,super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("image/test.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MusicLogo(),
//             SongName(),
//             ArtistName(),
//             MusicSickbar(),
//             Controller(
//               onPlayMusicClicked:onPlay,
//             ),
//           ],
//         ), /* add child content here */
//       ),
//     );
//   }
// }
//
// class MusicLogo extends StatelessWidget{
//   const MusicLogo({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding:
//             const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
//         width: 200,
//         height: 200,
//         decoration: BoxDecoration(
//             image:  const DecorationImage(
//                 image: AssetImage("image/test.jpg"),
//                 fit: BoxFit.cover),
//             border: Border.all(
//               width: 2,
//             ),
//             borderRadius: const BorderRadius.all(Radius.circular(60)))
//     );
//   }
// }
//
// class MusicSickbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 200,
//         height: 50,
//         child: ProgressBar(
//             progress: Duration(minutes: 2, seconds: 24),
//             buffered: Duration(seconds: 0),
//             total: Duration(minutes: 4, seconds: 03),
//             progressBarColor: Colors.red,
//             baseBarColor: Colors.white.withOpacity(0.5),
//             bufferedBarColor: Colors.orange.withOpacity(0.24),
//             thumbColor: Colors.green,
//             barHeight: 6.0,
//             thumbRadius: 0.0,
//             timeLabelTextStyle:GoogleFonts.pacifico(fontSize: 14,color: Colors.white),
//             onSeek: (duration) {
//               // _player.seek(duration);
//             }));
//   }
// }
// class ArtistName extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Alen',
//       style: GoogleFonts.rajdhani(fontSize: 10,color: Colors.white),
//     );
//   }
// }
//
// class SongName extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Soul and Mind',
//       style: GoogleFonts.pacifico(fontSize: 22,color: Colors.white),
//     );
//   }
// }
