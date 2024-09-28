import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class story_output extends ChangeNotifier {
  story_output();

  factory story_output.of(BuildContext context, {bool listen = true}) {
    return Provider.of<story_output>(context, listen: listen);
  }

  String? story_id = '';

  String? story_text_output =
      'One day, as the last star flickered and died, the Watcher felt a strange sensation—a warmth spreading through his chest. He looked down and saw that his suit was glowing, brighter than ever before. The energy surged through him, filling him with a power he had never known.';

  String? story_audio_url =
      'https://b2c4-182-77-50-63.ngrok-free.app/media/audio-stories/20240908235000.mp3';
}
