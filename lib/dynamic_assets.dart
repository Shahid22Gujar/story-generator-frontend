import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class DynamicAssets extends ChangeNotifier {
  DynamicAssets();

  factory DynamicAssets.of(BuildContext context, {bool listen = true}) {
    return Provider.of<DynamicAssets>(context, listen: listen);
  }
}
