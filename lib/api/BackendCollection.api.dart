import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:dio/dio.dart';
import 'package:mvp/models/login_model.dart';
import 'package:mvp/models/liststories_model.dart';
import 'package:mvp/models/create_stories_by_logged_in_user_model1.dart';
import 'package:mvp/models/create_stories_by_guest_user_model1.dart';
import 'package:mvp/models/feedback_model.dart';

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
      'https://sgujar.pythonanywhere.com/accounts/register/',
      data:
          '{\n    "email":"${user_email}",\n    "first_name":"${first_name}",\n    "password":"${password}",\n    "confirm_password":"${confirm_password}"\n}',
      options: Options(headers: {}),
    );
    return res;
  }

  Future<Response<dynamic>> Logout() async {
    final Response res = await dioClient.post(
      'https://sgujar.pythonanywhere.com/accounts/logout/',
      data: '{\n    \n}',
      options: Options(headers: {}),
    );
    return res;
  }

  Future<LoginModel?> login(
      {String? user_email = 'shahid@grr.la',
      String? user_password = 'admin'}) async {
    final Response res = await dioClient.post(
        'https://sgujar.pythonanywhere.com/accounts/login/',
        data:
            '{\n  "email":"${user_email}",\n  "password":"${user_password}"\n}');
    return LoginModel.fromJson(json: res.data!);
  }

  Future<List<ListStoriesModel?>?> ListStories(
      {String? jwt_api_token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI3NTU0ODQ3LCJpYXQiOjE3Mjc1NTQ1NDcsImp0aSI6IjEyMjQ3OTI3MmU2ZTQ4YWY5OTAyY2Y0YmMxNWQyYTNjIiwidXNlcl9pZCI6M30.Z8r9aGAouvUPCrYUV3yYe5mEgDc9kkXTaoHVR-VzjPY'}) async {
    final Response res = await dioClient.get(
        'https://sgujar.pythonanywhere.com/accounts/story',
        options:
            Options(headers: {'Authorization': 'Bearer ${jwt_api_token}'}));
    return (res.data as List)
        .map((e) => ListStoriesModel.fromJson(json: e))
        .toList();
  }

  Future<CreateStoriesByLoggedInUserModel1?> CreateStoriesByLoggedInUser(
      {String? jwt_api_token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI3NTU0ODQ3LCJpYXQiOjE3Mjc1NTQ1NDcsImp0aSI6IjEyMjQ3OTI3MmU2ZTQ4YWY5OTAyY2Y0YmMxNWQyYTNjIiwidXNlcl9pZCI6M30.Z8r9aGAouvUPCrYUV3yYe5mEgDc9kkXTaoHVR-VzjPY',
      String? time_period = '1990-2000',
      String? character = 'young girl',
      String? writing_style = 'fairy tale',
      bool? is_audio_to_generate = false,
      bool? is_regenerate = false}) async {
    final Response res = await dioClient.post(
      'https://sgujar.pythonanywhere.com/accounts/story',
      options: Options(headers: {'Authorization': 'Bearer ${jwt_api_token}'}),
      data:
          '{\n    "time_period": "${time_period}",\n    "character": "${character}",\n    "writing_style": "${writing_style}",\n    "is_audio_to_generate": "${is_audio_to_generate}",\n    "is_regenerate":"${is_regenerate}"\n}',
    );
    return CreateStoriesByLoggedInUserModel1.fromJson(json: res.data!);
  }

  Future<CreateStoriesByGuestUserModel1?> CreateStoriesByGuestUser(
      {String? time_period = '2015-2020',
      String? character = 'a ghost',
      String? writing_style = 'sonnet',
      bool? is_audio_to_generate = true,
      bool? is_regenerate = false}) async {
    final Response res = await dioClient.post(
      'https://sgujar.pythonanywhere.com/accounts/story',
      options: Options(headers: {}),
      data:
          '{\n    "time_period": "${time_period}",\n    "character": "${character}",\n    "writing_style": "${writing_style}",\n    "is_audio_to_generate": "${is_audio_to_generate}",\n    "is_regenerate":"${is_regenerate}"\n}',
    );
    return CreateStoriesByGuestUserModel1.fromJson(json: res.data!);
  }

  Future<FeedbackModel?> feedback(
      {String? story_id = '93fbad62-9396-45f5-8628-eb60aa8e80d0',
      String? feedback = 'like'}) async {
    final Response res = await dioClient.post(
        'https://sgujar.pythonanywhere.com/accounts/feedback/',
        data:
            '{\n  "story_reference":"${story_id}",\n  "feedback":"${feedback}"\n}');
    return FeedbackModel.fromJson(json: res.data!);
  }
}
