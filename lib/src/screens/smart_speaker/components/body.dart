import 'package:domus/config/size_config.dart';
import 'package:domus/view/smart_speaker_view_model.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Body extends StatelessWidget {
  final SmartSpeakerViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(19),
              top: getProportionateScreenHeight(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_outlined)),
                Stack(
                  children: [
                    Text(
                      'Smart\nSpeaker',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 45,
                            color: const Color(0xFFBDBDBD).withOpacity(0.5),
                          ),
                    ),
                    Text(
                      'Living\nRoom',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SleekCircularSlider(
              min: 5,
              max: 40,
              initialValue: 23,
              appearance: CircularSliderAppearance(
                size: 200,
                startAngle: 250,
                angleRange: 360,
                customColors: CustomSliderColors(
                  trackColor: const Color(0xFFBDBDBD),
                  progressBarColor: const Color(0xFF464646),
                  // hideShadow: true,
                  shadowColor: const Color(0xFFBDBDBD).withOpacity(0.1),
                  shadowMaxOpacity: 1,
                  shadowStep: 25,
                ),
                customWidths: CustomSliderWidths(
                  progressBarWidth: 10,
                  handlerSize: 10,
                  trackWidth: 10,
                  shadowWidth: 10,
                ),
              ),
              onChange: (double value) {
                // callback providing a value while its being changed (with a pan gesture)
              },
              onChangeStart: (double startValue) {
                // callback providing a starting value (when a pan gesture starts)
              },
              onChangeEnd: (double endValue) {
                // ucallback providing an ending value (when a pan gesture ends)
              },
              innerWidget: (double value) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/stay.jpg',
                      //height: getProportionateScreenHeight(50),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '3:15 | 4:26',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  'STAY',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Justin Bieber Ft. Kid Laroi',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.first_page_rounded,
                        size: 30,
                        color: Color(0xFF464646),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.play_arrow_rounded,
                        size: 35,
                        color: Color(0xFFF2F2F2),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.last_page_rounded,
                        size: 30,
                        color: Color(0xFF464646),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.playlist_play_rounded,
                  size: 30,
                  color: Color(0xFF464646),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.shuffle_rounded,
                  size: 25,
                  color: Color(0xFF464646),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.repeat_rounded,
                  size: 25,
                  color: Color(0xFF464646),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.equalizer_rounded,
                  size: 25,
                  color: Color(0xFF464646),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.favorite_rounded,
                  size: 25,
                  color: Color(0xFF464646),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kakao Mini C',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Connected',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              Switch.adaptive(
                inactiveThumbColor: const Color(0xFFE4E4E4),
                inactiveTrackColor: Colors.white,
                activeColor: Colors.white,
                activeTrackColor: const Color(0xFF464646),
                value: model.isSpeakeron,
                onChanged: (value) {
                  model.speakerSwitch(value);
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(9),
          ),
        ],
      ),
    );
  }
}
