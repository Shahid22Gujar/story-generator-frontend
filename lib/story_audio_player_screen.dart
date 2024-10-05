import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';

@NowaGenerated({'auto-width': 390, 'auto-height': 844})
class StoryAudioPlayerScreen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const StoryAudioPlayerScreen({super.key});

  @override
  State<StoryAudioPlayerScreen> createState() {
    return _StoryAudioPlayerScreenState();
  }
}

@NowaGenerated()
class _StoryAudioPlayerScreenState extends State<StoryAudioPlayerScreen> {
  CrossFadeState? fadeState = CrossFadeState.showFirst;

  AudioPlayerController? audioPC = AudioPlayerController(
      source: AudioSource(type: FileSourceType.network, path: ''));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 50,
          bottom: 10,
        ),
        child: SafeArea(
          child: Stack(
            alignment: const Alignment(0, 0),
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 24,
                bottom: 24,
                child: NotifierBuilder(
                  builder: (context) => ListView(
                    children: [
                      SizedBox(
                        width: 370,
                        height: 273,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                            right: 14,
                            top: 14,
                            bottom: 14,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(4291085508),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                const BoxShadow(
                                  color: Color(1272015359),
                                  spreadRadius: 5,
                                  blurRadius: 40,
                                  offset: Offset(0, 0),
                                )
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://images.unsplash.com/photo-1531777992189-ad52457fbe93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: null,
                        height: 97,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          child: NFlex(
                            direction: Axis.vertical,
                            spacing: 10,
                            children: [
                              const FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  'Story Audio',
                                  style: TextStyle(
                                    fontFamily: 'Alexandria',
                                    fontSize: 22,
                                    color: Color(4294959611),
                                  ),
                                ),
                              ),
                              FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  '${story_output.of(context, listen: false).story_audio_url} \n Artial name',
                                  style: const TextStyle(
                                    fontFamily: 'Alexandria',
                                    fontSize: 16,
                                    color: Color(4290484922),
                                  ),
                                ),
                              )
                            ],
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: null,
                        height: 102,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          child: NFlex(
                            direction: Axis.vertical,
                            spacing: 10,
                            children: [
                              FlexSizedBox(
                                width: double.infinity,
                                height: 57,
                                child: NFlex(
                                  direction: Axis.vertical,
                                  spacing: 0,
                                  children: [
                                    FlexSizedBox(
                                      width: double.infinity,
                                      height: 37.5,
                                      child: NSlider(
                                        value: audioPC!.position.inSeconds
                                            .toDouble(),
                                        onChanged: (value) {
                                          audioPC?.seek(value.round());
                                        },
                                        thumbColor: const Color(4292127440),
                                        overlayColor: const Color(1725213392),
                                        activeColor: const Color(4292127440),
                                        inactiveColor: const Color(4289440683),
                                        thumbRadius: 6,
                                        sliderHeight: 3,
                                        max: audioPC?.duration.inSeconds
                                            .toDouble(),
                                      ),
                                    ),
                                    FlexSizedBox(
                                      width: double.infinity,
                                      height: 17,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 14,
                                          right: 14,
                                          top: 0,
                                          bottom: 0,
                                        ),
                                        child: NFlex(
                                          direction: Axis.horizontal,
                                          spacing: 232.19776916503906,
                                          children: [
                                            FlexSizedBox(
                                              width: null,
                                              height: null,
                                              child: Text(
                                                audioPC!
                                                    .position.getHHMMSSFormat,
                                                style: const TextStyle(
                                                  fontFamily: 'Alexandria',
                                                  fontSize: 12,
                                                  color: Color(4289105807),
                                                ),
                                              ),
                                            ),
                                            FlexSizedBox(
                                              width: null,
                                              height: null,
                                              child: Text(
                                                audioPC!
                                                    .duration.getHHMMSSFormat,
                                                style: const TextStyle(
                                                  fontFamily: 'Alexandria',
                                                  fontSize: 12,
                                                  color: Color(4289105807),
                                                ),
                                              ),
                                            )
                                          ],
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                        ),
                                      ),
                                    )
                                  ],
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                ),
                              )
                            ],
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: null,
                        height: 84,
                        child: NFlex(
                          direction: Axis.horizontal,
                          spacing: 0,
                          children: [
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: IconButton(
                                onPressed: () {
                                  if (audioPC!.position.inSeconds + -5 >= 5) {
                                    audioPC?.seek(
                                        audioPC!.position.inSeconds + -5);
                                  }
                                },
                                icon: const Icon(
                                  IconData(983290, fontFamily: 'MaterialIcons'),
                                  color: Color(4292127440),
                                  size: 30,
                                ),
                              ),
                            ),
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconData(983443, fontFamily: 'MaterialIcons'),
                                  color: Color(4292127440),
                                  size: 48,
                                ),
                              ),
                            ),
                            FlexSizedBox(
                              width: 94,
                              height: 84,
                              child: AnimatedCrossFade(
                                firstChild: SizedBox(
                                  child: IconButton(
                                    onPressed: () {
                                      audioPC?.play().then((value) {
                                        fadeState = CrossFadeState.showSecond;
                                        setState(() {});
                                      }, onError: (error) {
                                        print('error:' + error!);
                                      });
                                    },
                                    icon: const Icon(
                                      IconData(983203,
                                          fontFamily: 'MaterialIcons'),
                                      color: Color(4292127440),
                                      size: 80,
                                    ),
                                    iconSize: 95,
                                  ),
                                ),
                                secondChild: IconButton(
                                  onPressed: () {
                                    audioPC?.pause().then((value) {
                                      fadeState = CrossFadeState.showFirst;
                                      setState(() {});
                                    }, onError: (error) {
                                      print('error:' + error!);
                                    });
                                  },
                                  icon: const Icon(
                                    IconData(983124,
                                        fontFamily: 'MaterialIcons'),
                                    color: Color(4292127440),
                                    size: 80,
                                  ),
                                  iconSize: 80,
                                ),
                                duration: const Duration(milliseconds: 200),
                                crossFadeState: fadeState!,
                              ),
                            ),
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconData(983442, fontFamily: 'MaterialIcons'),
                                  color: Color(4292127440),
                                  size: 48,
                                ),
                              ),
                            ),
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: IconButton(
                                onPressed: () {
                                  if (audioPC!.position.inSeconds + 5 <=
                                      audioPC!.duration.inSeconds) {
                                    audioPC
                                        ?.seek(audioPC!.position.inSeconds + 5);
                                  }
                                },
                                icon: const Icon(
                                  IconData(63392, fontFamily: 'MaterialIcons'),
                                  color: Color(4292127440),
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      )
                    ],
                    scrollDirection: Axis.vertical,
                  ),
                  notifier: audioPC,
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(4280097842),
      appBar: AppBar(
        title: Text(
          'Back',
          style: TextStyle(
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w900,
            fontSize: 14,
            letterSpacing: 3,
            color: const Color(4294828799),
          ),
        ),
        backgroundColor: const Color(16777215),
        actions: [
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10,
            ),
            child: Icon(
              IconData(63708, fontFamily: 'MaterialIcons'),
              color: Color(4292127440),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    audioPC?.dispose();
  }

  @override
  void initState() {
    super.initState();
    audioPC = AudioPlayerController(
        source: AudioSource(
            path: '${story_output.of(context, listen: false).story_audio_url}',
            type: FileSourceType.network));
  }
}
