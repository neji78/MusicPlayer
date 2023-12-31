import 'dart:io';

import 'package:just_audio/just_audio.dart';
class MusicCodec{
  late AudioPlayer player;// Create a player
  late Duration? duration ;
  MusicCodec() {}
  intiPlayer(String musicUrl) async {
    player = AudioPlayer();
    //print(File(musicUrl).uri);
    duration = await (player.setAsset('music/test.mp3')) ;
  }
  playMusic() async {
    await player.play();
  }

}