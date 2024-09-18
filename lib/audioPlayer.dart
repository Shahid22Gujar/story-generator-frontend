import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mvp/story_output.dart';

@NowaGenerated({'auto-width': 331, 'auto-height': 208})
class audioPlayer extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const audioPlayer({super.key});

  @override
  State<audioPlayer> createState() {
    return _audioPlayerState();
  }
}

@NowaGenerated()
class _audioPlayerState extends State<audioPlayer> {
  AudioSource? var1 = AudioSource(
      type: FileSourceType.network,
      path: '${story_output.of(context, listen: false)}');

  CrossFadeState? fadeSate = CrossFadeState.showFirst;

  AudioPlayerController? apc = AudioPlayerController(
      source: AudioSource(type: FileSourceType.network, path: 'hhfdf\''));

  @override
  Widget build(BuildContext context) {
    return NFlex(
      direction: Axis.vertical,
      spacing: 0,
      children: [
        FlexSizedBox(
          width: double.infinity,
          height: 40,
          child: NotifierBuilder(
            builder: (context) => NSlider(
              onChanged: (value) {
                apc?.seek(value!.round()!);
              },
              thumbColor: const Color(4280297006),
              activeColor: const Color(4280297006),
              min: 0,
              value: apc!.position.inSeconds.toDouble(),
              max: apc?.duration.inSeconds.toDouble(),
            ),
            notifier: apc,
          ),
        ),
        FlexSizedBox(
          width: double.infinity,
          child: NotifierBuilder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                top: 0,
                bottom: 0,
              ),
              child: NFlex(
                direction: Axis.horizontal,
                spacing: 0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlexSizedBox(
                    width: 93,
                    height: 23,
                    child: Text(
                      apc!.position.getHHMMSSFormat,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color(4280297006),
                      ),
                    ),
                  ),
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: Text(
                      apc!.duration.getHHMMSSFormat,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color(4280297006),
                      ),
                    ),
                  )
                ],
              ),
            ),
            notifier: apc,
          ),
          height: 23,
        ),
        FlexSizedBox(
          width: 232,
          height: 110,
          child: NFlex(
            direction: Axis.horizontal,
            spacing: 0,
            children: [
              FlexSizedBox(
                width: null,
                height: null,
                child: IconButton(
                  onPressed: () {
                    if (apc!.position.inSeconds + -10 >= 10) {
                      apc?.seek(apc!.position.inSeconds + -10);
                    }
                  },
                  icon: const Icon(
                    IconData(983288, fontFamily: 'MaterialIcons'),
                    color: Color(4280297006),
                    size: 40,
                  ),
                  iconSize: 60,
                ),
              ),
              FlexSizedBox(
                width: 110,
                height: 110,
                child: AnimatedCrossFade(
                  firstChild: SizedBox(
                    child: IconButton(
                      onPressed: () {
                        apc?.play().then((value) {
                          fadeSate = CrossFadeState.showSecond;
                          setState(() {});
                        }, onError: (error) {
                          print('error:' + error!);
                        });
                      },
                      icon: const Icon(
                        IconData(983203, fontFamily: 'MaterialIcons'),
                        color: Color(4280297006),
                        size: null,
                      ),
                      iconSize: 95,
                    ),
                  ),
                  secondChild: IconButton(
                    onPressed: () {
                      apc?.pause().then((value) {
                        fadeSate = CrossFadeState.showFirst;
                        setState(() {});
                      }, onError: (error) {
                        print('error:' + error!);
                      });
                    },
                    icon: const Icon(
                      IconData(983124, fontFamily: 'MaterialIcons'),
                      color: Color(4280297006),
                    ),
                    iconSize: 95,
                  ),
                  crossFadeState: fadeSate!,
                  duration: const Duration(milliseconds: 200),
                ),
              ),
              FlexSizedBox(
                width: 56,
                height: null,
                child: IconButton(
                  onPressed: () {
                    if (apc!.position.inSeconds + 10 <=
                        apc!.duration.inSeconds) {
                      apc?.seek(apc!.position.inSeconds + 10);
                    }
                  },
                  icon: const Icon(
                    IconData(63390, fontFamily: 'MaterialIcons'),
                    color: Color(4280297006),
                    size: 40,
                  ),
                  iconSize: 60,
                ),
              )
            ],
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        )
      ],
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }

  @override
  void dispose() {
    super.dispose();
    apc?.dispose();
  }
}
