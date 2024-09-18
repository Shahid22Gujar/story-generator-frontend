import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class story_input extends ChangeNotifier {
  factory story_input.of(BuildContext context, {bool listen = true}) {
    return Provider.of<story_input>(context, listen: listen);
  }

  story_input();

  bool? is_audio_to_generate = false;

  String? writing_style_input = '';

  String? character_input = '';

  String? time_period_input = '';
}
