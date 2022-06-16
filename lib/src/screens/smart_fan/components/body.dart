import 'package:domus/config/size_config.dart';
import 'package:domus/view/smart_fan_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.model}) : super(key: key);
  final SmartFanViewModel model;
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _noController;

  int getDuration(double speed) {
    if (widget.model.speed == 0) return widget.model.duration[0].toInt();
    if (widget.model.speed > 0 && widget.model.speed <= 1) {
      return widget.model.duration[1].toInt();
    }
    if (widget.model.speed > 1 && widget.model.speed <= 2) {
      return widget.model.duration[2].toInt();
    }
    if (widget.model.speed > 2 && widget.model.speed <= 3) {
      return widget.model.duration[3].toInt();
    }
    if (widget.model.speed > 3 && widget.model.speed <= 4) {
      return widget.model.duration[4].toInt();
    }
    if (widget.model.speed > 4 && widget.model.speed <= 5) {
      return widget.model.duration[5].toInt();
    } else {
      return 0;
    }
  }

  @override
  void initState() {
    super.initState();
    _noController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1000),
    )..repeat();
    if (kDebugMode) {
      print(widget.model.speed);
    }
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: getDuration(widget.model.speed)),
    )..repeat();
  }

  void changespeed(AnimationController c) {
    c.duration = Duration(milliseconds: getDuration(widget.model.speed));
    if (c.isAnimating) c.forward();
    c.repeat();
  }

  @override
  void dispose() {
    _noController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(7),
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
                              'Living\nRoom',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    fontSize: 45,
                                    color: const Color(0xFFBDBDBD)
                                        .withOpacity(0.5),
                                  ),
                            ),
                            Text(
                              'Smart\nFan',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(26),
                        ),
                        Text(
                          'Power',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(4),
                        ),
                        Switch.adaptive(
                          inactiveThumbColor: const Color(0xFFE4E4E4),
                          inactiveTrackColor: Colors.white,
                          activeColor: Colors.white,
                          activeTrackColor: const Color(0xFF464646),
                          value: widget.model.isFanOff,
                          onChanged: (value) {
                            widget.model.fanSwitch(value);
                          },
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(105),
                  ),
                ],
              ),
            ),
            // SizedBox(width: 10,),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: getProportionateScreenHeight(260),
                  width: getProportionateScreenWidth(120),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Lottie.asset(
                    'assets/Lottie/fan.json',
                    // width: 260,
                    // height: 250,
                    fit: BoxFit.fill,
                    animate: widget.model.isFanOff ? true : false,
                    controller:
                        widget.model.isFanOff ? _controller : _noController,
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(
              right: 10,
            )),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(
              15,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mode',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: getProportionateScreenHeight(9),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: ToggleButtons(
                  selectedColor: Colors.white,
                  fillColor: const Color(0xFF464646),
                  renderBorder: false,
                  borderRadius: BorderRadius.circular(15),
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: Colors.white),
                  children: <Widget>[
                    SizedBox(
                      width: getProportionateScreenWidth(76),
                      child: const Text(
                        'Air',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(76),
                      child: const Text(
                        'Mild',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(76),
                      child: const Text(
                        'Breeze',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  onPressed: (int index) {
                    widget.model.onToggleTapped(index);
                  },
                  isSelected: widget.model.isSelected,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Speed',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    '${widget.model.speed.toInt()}',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                    trackHeight: getProportionateScreenHeight(5),
                    thumbColor: const Color(0xFF464646),
                    activeTrackColor: const Color(0xFF464646),
                    inactiveTrackColor: Colors.white,
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 8)),
                child: Slider(
                  min: 0,
                  max: 5,
                  onChanged: (val) {
                    changespeed(_controller);
                    widget.model.changeSpeed(val);
                  },
                  value: widget.model.speed,
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
