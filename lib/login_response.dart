import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class login_response extends ChangeNotifier {
  factory login_response.of(BuildContext context, {bool listen = true}) {
    return Provider.of<login_response>(context, listen: listen);
  }

  login_response();

  String? refresh_token = '';

  String? access_token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI2NTkyODExLCJpYXQiOjE3MjY1OTI1MTEsImp0aSI6IjNmN2RlY2QwM2FkOTRlMzY4OTc1NzQ2YWNiMTdmMjhkIiwidXNlcl9pZCI6Nn0.dqfEIDRcQrsqi8UnapRKcAK7Ug5TxcXFGcpy28maVAI';
}
