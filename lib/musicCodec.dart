import 'dart:io';
import 'dart:typed_data';
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
    Uint8List data = Uint8List(0);
    File file =  File(musicUrl);
    try {
      file.open();
    }on FileSystemException catch(error){
      print(error);
    }

    try {
      data = file.readAsBytes() as Uint8List;
      // print(data);
    }on FileSystemException catch(error){
      print(error);
    }
    metadata = await MetadataRetriever.fromBytes(data);
    print(metadata.albumArtistName);
    print(metadata.trackName);
    print(metadata.trackDuration);
    print(metadata.mimeType);
    // player.play();
  }

}