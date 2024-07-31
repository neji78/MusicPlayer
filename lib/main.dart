import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:simpleproject/musicCodec.dart';
import 'controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  MusicCodec codec = MusicCodec();
  MusicPlayer({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //appBar: AppBar(),
      home: MusicBody(
        onPlay: (){
          // codec.intiPlayer('C://Users/pars/Desktop/music/test.mp3');
           codec.playMusic(musicUrl:'music/test.mp3');
        },
      ),
    );
  }
}

class MusicBody extends StatelessWidget {
  final VoidCallback onPlay;
  MusicBody({required this.onPlay,super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/test.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MusicLogo(),
            SongName(),
            ArtistName(),
            MusicSickbar(),
            Controller(
              onPlayMusicClicked:onPlay,
            ),
          ],
        ), /* add child content here */
      ),
    );
  }
}

class MusicLogo extends StatelessWidget{
  const MusicLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image:  const DecorationImage(
                image: AssetImage("image/test.jpg"),
                fit: BoxFit.cover),
            border: Border.all(
              width: 2,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(60)))
    );
  }
}

class MusicSickbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 50,
        child: ProgressBar(
            progress: Duration(minutes: 2, seconds: 24),
            buffered: Duration(seconds: 0),
            total: Duration(minutes: 4, seconds: 03),
            progressBarColor: Colors.red,
            baseBarColor: Colors.white.withOpacity(0.5),
            bufferedBarColor: Colors.orange.withOpacity(0.24),
            thumbColor: Colors.green,
            barHeight: 6.0,
            thumbRadius: 0.0,
            timeLabelTextStyle:GoogleFonts.pacifico(fontSize: 14,color: Colors.white),
            onSeek: (duration) {
              // _player.seek(duration);
            }));
  }
}
class ArtistName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Alen',
      style: GoogleFonts.rajdhani(fontSize: 10,color: Colors.white),
    );
  }
}

class SongName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Soul and Mind',
      style: GoogleFonts.pacifico(fontSize: 22,color: Colors.white),
    );
  }
}
