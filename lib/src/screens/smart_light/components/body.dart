import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_outlined),
                  Stack(
                    children: [
                      Text(
                        'Living\nRoom',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 45,
                              color: Color(0xFFBDBDBD).withOpacity(0.5),
                            ),
                      ),
                      Text(
                        'Living\nRoom',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Power',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Switch.adaptive(
                    inactiveThumbColor: Color(0xFFE4E4E4),
                    inactiveTrackColor: Colors.white,
                    activeColor: Colors.white,
                    activeTrackColor: Color(0xFF464646),
                    value: true,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Color',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/color_wheel.png',
                    height: 30,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/lamp.png',
                  height: 300,
                ),

                ///todo: Position this image in correct manner
                Image.asset(
                  'assets/images/orange.png',
                  height: 200,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tone Glow',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: ToggleButtons(
                  selectedColor: Colors.white,
                  fillColor: Color(0xFF464646),
                  renderBorder: false,
                  borderRadius: BorderRadius.circular(15),
                  children: <Widget>[
                    SizedBox(
                      width: 187,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Warm',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 187,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Cold',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ),
                  ],
                  onPressed: (int index) {
                    // setState(() {
                    //   for (int i = 0; i < isSelected.length; i++) {
                    //     isSelected[i] = i == index
                    //   }
                    // });
                  },
                  isSelected: isSelected,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Intensity',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    '35%',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                    trackHeight: 8,
                    thumbColor: Color(0xFF464646),
                    activeTrackColor: Color(0xFF464646),
                    inactiveTrackColor: Colors.white,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 11)),
                child: Slider(
                  value: 0.5,
                  onChanged: (val) {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Off',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '100%',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
