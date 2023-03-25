import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  Note({Key? key, required this.filePath, required this.color}) : super(key: key);

  final audioplayer = AudioPlayer();
  final String filePath;
  final Color color;

  Future setAudio({required String path}) {
    return audioplayer.setSource(AssetSource(path));
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()  async {
        await setAudio(path: filePath);
        audioplayer.play(audioplayer.source!);
      },
      child: Container(
        height: 100,
        color: color,
      ),
    );
  }
}
