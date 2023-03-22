import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final audioplayer = AudioPlayer();

  Future setAudio({required String path}) async {
    await audioplayer.setSource(AssetSource(path));
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () async {
                await setAudio(path: "sounds/assets_note1.wav");
                await audioplayer.play(audioplayer.source!);
              },
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
