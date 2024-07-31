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
    return Column(
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
            progress: Duration.zero,
            buffered: Duration(seconds: 20),
            total: Duration(minutes: 1, seconds: 40),
            progressBarColor: Colors.red,
            baseBarColor: Colors.black.withOpacity(0.24),
            bufferedBarColor: Colors.orange.withOpacity(0.24),
            thumbColor: Colors.green,
            barHeight: 3.0,
            thumbRadius: 5.0,
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
      style: GoogleFonts.rajdhani(fontSize: 10),
    );
  }
}

class SongName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Soul and Mind',
      style: GoogleFonts.pacifico(fontSize: 22),
    );
  }
}
