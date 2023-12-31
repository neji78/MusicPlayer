import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Controller extends StatelessWidget {
  final VoidCallback onPlayMusicClicked;

  const Controller({required this.onPlayMusicClicked,super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RepeatMusicButton(),
              PreviousMusicButton(),
              PlayMusicButton(
                onPlayPressed: onPlayMusicClicked,

              ),
              NextMusicButton(),
              LikeMusicButton()
            ],
          )),
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
  final VoidCallback onPlayPressed;
  PlayMusicButton({required this.onPlayPressed});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPlayPressed,
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
