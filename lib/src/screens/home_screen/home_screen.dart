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
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 100,
                //centerTitle: true,
                elevation: 0,
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi, Lex',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Image.asset('assets/icons/profile_img.png'),
                    ],
                  ),
                ),

                leadingWidth: 300,
                bottom: PreferredSize(
                    child: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.white.withOpacity(0.3),
                        indicatorColor: Color(0xFF464646),
                        tabs: [
                          Tab(
                            child: Text(
                              'Living Room',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Dining',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Kitchen',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                        ]),
                    preferredSize: Size.fromHeight(70.0)),
              ),
              body: TabBarView(
                children: <Widget>[
                  Body(),
                  Container(
                    child: Center(
                      child: Text(
                        'To be Built Soon',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('under construction'),
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: CustomBottomNavBar(model),
            ),
          );
        });
  }
}
