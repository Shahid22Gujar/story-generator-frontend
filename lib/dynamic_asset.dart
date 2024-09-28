import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class DynamicAsset extends ChangeNotifier {
  factory DynamicAsset.of(BuildContext context, {bool listen = true}) {
    return Provider.of<DynamicAsset>(context, listen: listen);
  }

  DynamicAsset();

  String? processing_img =
      'https://sgujar.pythonanywhere.com/media/assets/NewProcessing.jpeg';

  String? do_it_again_img =
      'https://sgujar.pythonanywhere.com/media/assets/NewDoItAgain.jpeg';
}
