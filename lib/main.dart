import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

void main() {
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //appBar: AppBar(),
      home: MusicBody(),
    );
  }
}

class MusicBody extends StatelessWidget {
  const MusicBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MusicLogo(),
        SongName(),
        ArtistName(),
        MusicSickbar(),
        Controller(),
      ],
    );
  }
}

class MusicLogo extends StatelessWidget {
  const MusicLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        width: 205,
        height: 205,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/alen.jpg'), fit: BoxFit.cover),
            border: Border.all(
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(60))));
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

class Controller extends StatelessWidget {
  const Controller({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RepeatMusicButton(),
              PreviousMusicButton(),
              PlayMusicButton(),
              NextMusicButton(),
              LikeMusicButton()
            ],
          )),
    );
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

class RepeatMusicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          //print("add clicked");
        },
        icon: const Icon(
          Icons.repeat_rounded,
          color: Colors.black,
          size: 20,
        ));
  }
}

class PreviousMusicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          //print("add clicked");
        },
        icon: const Icon(
          Icons.skip_previous_rounded,
          color: Colors.black,
          size: 20,
        ));
  }
}

class PlayMusicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.pink,
      child: const Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

class NextMusicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          //print("add clicked");
        },
        icon: const Icon(
          Icons.skip_next_rounded,
          color: Colors.black,
          size: 20,
        ));
  }
}

class LikeMusicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.heart,
          color: Colors.black,
          size: 20,
        ));
  }
}
