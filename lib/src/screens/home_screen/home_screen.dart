import 'package:domus/config/size_config.dart';
import 'package:domus/provider/base_view.dart';
import 'package:domus/src/widgets/custom_bottom_nav_bar.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseView<HomeScreenViewModel>(
        onModelReady: (model) => {},
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Center(child: Text('Lossy')),
            ),
            body: PageView(controller: model.pageController, children: [
              SingleChildScrollView(
                child: Body(),
              ),
            ]),
            floatingActionButton: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Add Weight here',
                style: TextStyle(
                  fontSize: 15,
                  color: ThemeData().scaffoldBackgroundColor,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                padding: EdgeInsets.all(10),
              ),
            ),
            bottomNavigationBar: CustomBottomNavBar(model),
          );
        });
  }
}
