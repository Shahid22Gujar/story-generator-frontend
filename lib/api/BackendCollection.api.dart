import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:dio/dio.dart';
import 'package:mvp/models/login_model.dart';
import 'package:mvp/models/liststories_model.dart';
import 'package:mvp/models/createstoriesbyloggedinuser_model.dart';
import 'package:mvp/models/createstoriesbyguestuser_model.dart';

@NowaGenerated({'editor': 'api'})
class BackendCollection {
  factory BackendCollection() {
    return _instance;
  }

  BackendCollection._();

  final Dio _dioClient = Dio();

  static final BackendCollection _instance = BackendCollection._();

  @NowaGenerated({'loader': 'api_client_getter'})
  Dio get dioClient {
    return _dioClient;
  }

  Future<Response<dynamic>> Register(
      {String? user_email = 'nikhil123@gmail.com',
      String? first_name = 'test user',
      String? password = 'admin',
      String? confirm_password = 'admin'}) async {
    final Response res = await dioClient.post(
      'https://b2c4-182-77-50-63.ngrok-free.app/accounts/register/',
      data:
          '{\n    "email":"${user_email}",\n    "first_name":"${first_name}",\n    "password":"${password}",\n    "confirm_password":"${confirm_password}"\n}',
      options: Options(headers: {}),
    );
    return res;
  }

  Future<Response<dynamic>> Logout() async {
    final Response res = await dioClient.post(
      'https://b2c4-182-77-50-63.ngrok-free.app/accounts/logout/',
      data: '{\n    \n}',
      options: Options(headers: {}),
    );
    return res;
  }

  Future<LoginModel?> login(
      {String? user_email = 'shahid@grr.la',
      String? user_password = 'admin'}) async {
    final Response res = await dioClient.post(
        'https://b2c4-182-77-50-63.ngrok-free.app/accounts/login/',
        data:
            '{\n  "email":"${user_email}",\n  "password":"${user_password}"\n}');
    return LoginModel.fromJson(json: res.data!);
  }

  Future<List<ListStoriesModel?>?> ListStories(
      {String? jwt_api_token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI2MjkzMTQ0LCJpYXQiOjE3MjYyOTI4NDQsImp0aSI6ImQyMDQ3M2Q3YjU2MTQ2ZGZhNWRjM2IxYTNjNGI3MDY5IiwidXNlcl9pZCI6Nn0.IlrThPmRhm_QAGKnA7qZA-k4BQ8_gAEaZY4Aq5ri3oA'}) async {
    final Response res = await dioClient.get(
        'https://b2c4-182-77-50-63.ngrok-free.app/accounts/story',
        options:
            Options(headers: {'Authorization': 'Bearer ${jwt_api_token}'}));
    return (res.data as List)
        .map((e) => ListStoriesModel.fromJson(json: e))
        .toList();
  }

  Future<CreateStoriesByLoggedInUserModel?> CreateStoriesByLoggedInUser(
      {String? jwt_api_token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI2MjIwMDEwLCJpYXQiOjE3MjYyMTk3MTAsImp0aSI6IjA3N2U4OTJhZDE5ZDRkNWU5MDFhMzBlNmI1NzBiYzliIiwidXNlcl9pZCI6Nn0.6Z1VCHa13M1d6RwW9UkYyeiqY56qgJW2tExgTFG9P6w',
      String? time_period = '1990-2000',
      String? character = 'young girl',
      String? writing_style = 'fairy tale',
      bool? is_audio_to_generate = false}) async {
    final Response res = await dioClient.post(
      'https://b2c4-182-77-50-63.ngrok-free.app/accounts/story',
      options: Options(headers: {'Authorization': 'Bearer ${jwt_api_token}'}),
      data:
          '{\n  "time_period":"${time_period}",\n  "character":"${character}",\n  "writing_style":"${writing_style}",\n  "is_audio_to_generate":"${is_audio_to_generate}"\n}',
    );
    return CreateStoriesByLoggedInUserModel.fromJson(json: res.data!);
  }

  Future<CreateStoriesByGuestUserModel?> CreateStoriesByGuestUser(
      {String? time_period = '2015-2020',
      String? character = 'a ghost',
      String? writing_style = 'sonnet',
      bool? is_audio_to_generate = true}) async {
    final Response res = await dioClient.post(
      'https://b2c4-182-77-50-63.ngrok-free.app/accounts/story',
      options: Options(headers: {}),
      data:
          '{\n  "time_period":"${time_period}",\n  "character":"${character}",\n  "writing_style":"${writing_style}",\n  "is_audio_to_generate":"${is_audio_to_generate}"\n}',
    );
    return CreateStoriesByGuestUserModel.fromJson(json: res.data!);
  }
}
