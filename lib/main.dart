import 'package:shared_preferences/shared_preferences.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mvp/dynamic_asset.dart';
import 'package:mvp/story_output.dart';
import 'package:mvp/story_input.dart';
import 'package:mvp/login_response.dart';
import 'package:mvp/audio_basic_info_authenticated_screen.dart';
import 'package:mvp/audio_basic_info_new_screen.dart';
import 'package:mvp/audio_basic_info_screen.dart';
import 'package:mvp/audio_character_authenticated_new_screen.dart';
import 'package:mvp/audio_character_new_screen.dart';
import 'package:mvp/audio_character_screen.dart';
import 'package:mvp/audio_output_feedback_screen.dart';
import 'package:mvp/audio_output_save_screen.dart';
import 'package:mvp/audio_output_screen.dart';
import 'package:mvp/audio_screen.dart';
import 'package:mvp/audio_time_period_authenticated_new_screen.dart';
import 'package:mvp/audio_time_period_screen.dart';
import 'package:mvp/audio_writing_style_authenticated_new_screen.dart';
import 'package:mvp/audio_writing_style_new_screen.dart';
import 'package:mvp/audio_writing_style_screen.dart';
import 'package:mvp/audioPlayer.dart';
import 'package:mvp/audioPlayerPage.dart';
import 'package:mvp/authenticated_homepage.dart';
import 'package:mvp/back.dart';
import 'package:mvp/component.dart';
import 'package:mvp/Em.dart';
import 'package:mvp/Empty.dart';
import 'package:mvp/Empty1.dart';
import 'package:mvp/Empty2.dart';
import 'package:mvp/Empty3.dart';
import 'package:mvp/feed_back_component.dart';
import 'package:mvp/homepage.dart';
import 'package:mvp/login.dart';
import 'package:mvp/mvp00.dart';
import 'package:mvp/mvp10.dart';
import 'package:mvp/mvp10a.dart';
import 'package:mvp/mvp15.dart';
import 'package:mvp/mvp16.dart';
import 'package:mvp/mvp17.dart';
import 'package:mvp/mvp18.dart';
import 'package:mvp/mvp19.dart';
import 'package:mvp/mvp9.dart';
import 'package:mvp/mvp9a.dart';
import 'package:mvp/mvp_screens.dart';
import 'package:mvp/my_stories_generated_new_screen.dart';
import 'package:mvp/my_stories_generated_screen.dart';
import 'package:mvp/my_story.dart';
import 'package:mvp/my_story_component.dart';
import 'package:mvp/myStory.dart';
import 'package:mvp/NewScreen.dart';
import 'package:mvp/newScreen1.dart';
import 'package:mvp/One.dart';
import 'package:mvp/One1.dart';
import 'package:mvp/placeholder.dart';
import 'package:mvp/scr1.dart';
import 'package:mvp/scr3.dart';
import 'package:mvp/screen1.dart';
import 'package:mvp/sign_up.dart';
import 'package:mvp/Singup.dart';
import 'package:mvp/Stack1.dart';
import 'package:mvp/story_audio_player_screen.dart';
import 'package:mvp/story_detail.dart';
import 'package:mvp/story_element.dart';
import 'package:mvp/story_share_save_option_screen.dart';
import 'package:mvp/storyComponent.dart';
import 'package:mvp/text_character_authenticate_screen.dart';
import 'package:mvp/text_character_screen.dart';
import 'package:mvp/text_output_auth_screen.dart';
import 'package:mvp/text_output_authenticated_screen.dart';
import 'package:mvp/text_output_screen.dart';
import 'package:mvp/text_output_screen_continue.dart';
import 'package:mvp/text_output_screen_end.dart';
import 'package:mvp/text_screen.dart';
import 'package:mvp/text_screen_authenticated_screen.dart';
import 'package:mvp/text_time_period_authenticate_screen.dart';
import 'package:mvp/text_time_period_screen.dart';
import 'package:mvp/text_writing_style_authenticated_screen.dart';
import 'package:mvp/text_writing_style_screen.dart';
import 'package:mvp/Two.dart';

@NowaGenerated()
late final SharedPreferences sharedPrefs;

@NowaGenerated()
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

@NowaGenerated()
class MyApp extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DynamicAsset>(
      create: (context) => DynamicAsset(),
      child: ChangeNotifierProvider<story_output>(
        create: (context) => story_output(),
        child: ChangeNotifierProvider<story_input>(
          create: (context) => story_input(),
          child: ChangeNotifierProvider<login_response>(
            create: (context) => login_response(),
            child: MaterialApp(
              initialRoute: 'homepage',
              routes: {
                'audio_basic_info_authenticated_screen': (context) =>
                    const audio_basic_info_authenticated_screen(),
                'audio_basic_info_new_screen': (context) =>
                    const audio_basic_info_new_screen(),
                'audio_basic_info_screen': (context) =>
                    const audio_basic_info_screen(),
                'audio_character_authenticated_new_screen': (context) =>
                    const audio_character_authenticated_new_screen(),
                'audio_character_new_screen': (context) =>
                    const audio_character_new_screen(),
                'audio_character_screen': (context) =>
                    const audio_character_screen(),
                'audio_output_feedback_screen': (context) =>
                    const audio_output_feedback_screen(),
                'audio_output_save_screen': (context) =>
                    const audio_output_save_screen(),
                'audio_output_screen': (context) => const audio_output_screen(),
                'audio_screen': (context) => const audio_screen(),
                'audio_time_period_authenticated_new_screen': (context) =>
                    const audio_time_period_authenticated_new_screen(),
                'audio_time_period_screen': (context) =>
                    const audio_time_period_screen(),
                'audio_writing_style_authenticated_new_screen': (context) =>
                    const audio_writing_style_authenticated_new_screen(),
                'audio_writing_style_new_screen': (context) =>
                    const audio_writing_style_new_screen(),
                'audio_writing_style_screen': (context) =>
                    const audio_writing_style_screen(),
                'audioPlayer': (context) => const audioPlayer(),
                'AudioPlayerPage': (context) => const AudioPlayerPage(),
                'authenticated_homepage': (context) =>
                    const authenticated_homepage(),
                'Back': (context) => const Back(),
                'component': (context) => const component(),
                'Em': (context) => const Em(),
                'Empty': (context) => const Empty(),
                'Empty1': (context) => const Empty1(),
                'Empty2': (context) => const Empty2(),
                'Empty3': (context) => const Empty3(),
                'FeedBackComponent': (context) => const FeedBackComponent(),
                'homepage': (context) => const homepage(),
                'login': (context) => const login(),
                'mvp00': (context) => const mvp00(),
                'mvp10': (context) => const mvp10(),
                'mvp10a': (context) => const mvp10a(),
                'mvp15': (context) => const mvp15(),
                'mvp16': (context) => const mvp16(),
                'mvp17': (context) => const mvp17(),
                'mvp18': (context) => const mvp18(),
                'mvp19': (context) => const mvp19(),
                'mvp9': (context) => const mvp9(),
                'mvp9a': (context) => const mvp9a(),
                'mvp_screens': (context) => const mvp_screens(),
                'my_stories_generated_new_screen': (context) =>
                    const my_stories_generated_new_screen(),
                'my_stories_generated_screen': (context) =>
                    const my_stories_generated_screen(),
                'my_story': (context) => const my_story(),
                'MyStoryComponent': (context) => const MyStoryComponent(),
                'myStory': (context) => const myStory(),
                'NewScreen': (context) => const NewScreen(),
                'newScreen1': (context) => const newScreen1(),
                'One': (context) => const One(),
                'One1': (context) => const One1(),
                'placeholder': (context) => const placeholder(),
                'scr1': (context) => const scr1(),
                'scr3': (context) => const scr3(),
                'screen1': (context) => const screen1(),
                'sign_up': (context) => const sign_up(),
                'Singup': (context) => const Singup(),
                'Stack1': (context) => const Stack1(),
                'StoryAudioPlayerScreen': (context) =>
                    const StoryAudioPlayerScreen(),
                'story_detail': (context) => const story_detail(),
                'StoryElement': (context) => const StoryElement(),
                'story_share_save_option_screen': (context) =>
                    const story_share_save_option_screen(),
                'storyComponent': (context) => const storyComponent(),
                'text_character_authenticate_screen': (context) =>
                    const text_character_authenticate_screen(),
                'text_character_screen': (context) =>
                    const text_character_screen(),
                'text_output_auth_screen': (context) =>
                    const text_output_auth_screen(),
                'text_output_authenticated_screen': (context) =>
                    const text_output_authenticated_screen(),
                'text_output_screen': (context) => const text_output_screen(),
                'text_output_screen_continue': (context) =>
                    const text_output_screen_continue(),
                'text_output_screen_end': (context) =>
                    const text_output_screen_end(),
                'text_screen': (context) => const text_screen(),
                'text_screen_authenticated_screen': (context) =>
                    const text_screen_authenticated_screen(),
                'text_time_period_authenticate_screen': (context) =>
                    const text_time_period_authenticate_screen(),
                'text_time_period_screen': (context) =>
                    const text_time_period_screen(),
                'text_writing_style_authenticated_screen': (context) =>
                    const text_writing_style_authenticated_screen(),
                'text_writing_style_screen': (context) =>
                    const text_writing_style_screen(),
                'Two': (context) => const Two(),
              },
            ),
          ),
        ),
      ),
    );
  }
}
