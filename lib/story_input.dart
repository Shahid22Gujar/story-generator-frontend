import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class story_input extends ChangeNotifier {
  story_input();

  factory story_input.of(BuildContext context, {bool listen = true}) {
    return Provider.of<story_input>(context, listen: listen);
  }

  String? story_genre = 'fiction';

  String? time_period_input = '';

  String? character_input = '';

  String? writing_style_input = '';

  bool? is_audio_to_generate = false;
}
