import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class LoginModel {
  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginModel.fromJson({required Map<String, dynamic> json}) {
    return LoginModel(refresh: json['refresh'], access: json['access']);
  }

  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginModel({this.refresh, this.access});

  final String? access;

  final String? refresh;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'refresh': refresh, 'access': access};
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginModel copyWith({String? refresh, String? access}) {
    return LoginModel(
        refresh: refresh ?? this.refresh, access: access ?? this.access);
  }
}
