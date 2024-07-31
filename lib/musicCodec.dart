import 'dart:io';
import 'package:just_audio/just_audio.dart';
import 'package:flutter_media_metadata/flutter_media_metadata.dart';
class MusicCodec{
  late Metadata metadata ;
  // final AudioPlayer player =  AudioPlayer();// Create a player
  // late Duration? duration ;
  MusicCodec();
  // Future<void> intiPlayer(String musicUrl) async {
  //    // duration = await player.setAsset('music/test.mp3');
  //    // print(duration);
  // }
  void playMusic({required String musicUrl})  async{
    metadata = await MetadataRetriever.fromBytes(File(musicUrl));
    print(metadata.albumArtistName);
    print(metadata.trackName);
    print(metadata.trackDuration);
    print(metadata.mimeType);
    // player.play();
  }

}