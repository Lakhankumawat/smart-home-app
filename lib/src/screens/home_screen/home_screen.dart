import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domus/config/size_config.dart';
import 'package:domus/provider/base_view.dart';
import 'package:domus/src/widgets/custom_bottom_nav_bar.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

//ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  static final String routeName = '/home-screen';
  String? uid,urlImage,name;
  HomeScreen({Key? key,required this.uid, this.urlImage, this.name }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void ReloadImage() async {
    print('uid {${widget.uid}}');
    await FirebaseFirestore.instance.collection('users')
        .doc(widget.uid).get().then((value){
          setState((){
            widget.name = value.data()!['name'];
            widget.urlImage = value.data()!['downloadUrl'];
            print(widget.urlImage);

          });
    });
  }

  @override
  void initState() {
    super.initState();
    ReloadImage();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseView<HomeScreenViewModel>(
        onModelReady: (model) => {
              model.generateRandomNumber(),
            },
        builder: (context, model, child) {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: getProportionateScreenHeight(60),
                //centerTitle: true,
                elevation: 0,
                title: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(
                      4,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi, ${widget.name}',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffdadada),
                            image: DecorationImage(image: NetworkImage(
                                widget.urlImage!
                            ) ,
                                fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(45, 45)),
                        ),
                      ) ,
                    ],
                  ),
                ),
                leadingWidth: getProportionateScreenWidth(170),
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
                  preferredSize: Size.fromHeight(
                    getProportionateScreenHeight(
                      35,
                    ),
                  ),
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Body(
                    model: model,
                  ),
                  Container(
                    child: Body(
                      model: model,
                    ),
                  ),
                  Container(
                    child: Body(
                      model: model,
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
