import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';  // Assuming this contains the global variable

@NowaGenerated({'auto-width': 393, 'auto-height': 834})
class AudioPlayerPage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const AudioPlayerPage({super.key});

  @override
  State<AudioPlayerPage> createState() {
    return _AudioPlayerPageState();
  }
}

@NowaGenerated()
class _AudioPlayerPageState extends State<AudioPlayerPage> {
  AudioPlayerController? audioPC;

  CrossFadeState? fadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();
    // Access the global variable `story_output.audio_url`
    String audioUrl = story_output.audio_url ?? '';  // Fallback if null

    // Initialize the AudioPlayerController with the global variable
    audioPC = AudioPlayerController(
      source: AudioSource(
        type: FileSourceType.network,
        path: audioUrl,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 50,
          bottom: 10,
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment(0, 0),
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: NotifierBuilder(
                  builder: (context) => ListView(
                    children: [
                      // Your widget code here
                    ],
                  ),
                  notifier: audioPC,
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(4280097842),
      appBar: AppBar(
        title: const Text(
          'NOW PLAYING',
          style: TextStyle(
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w900,
            fontSize: 14,
            letterSpacing: 3,
            color: Color(4294828799),
          ),
        ),
        backgroundColor: const Color(16777215),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    audioPC?.dispose();
  }
}
