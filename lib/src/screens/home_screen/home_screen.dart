import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domus/config/size_config.dart';
import 'package:domus/provider/base_view.dart';
import 'package:domus/src/widgets/custom_bottom_nav_bar.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'components/body.dart';

//ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  static final String routeName = '/home-screen';
  String? uid ;
  HomeScreen({Key? key,required this.uid, }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin  {
  String? urlImage,name,uid;

  void ReloadImage() async {
    setState((){uid = widget.uid;});
    print('uid ${uid}');
    await FirebaseFirestore.instance.collection('users')
        .doc(uid).get().then((value){
          setState((){
            name = value.data()!['name'];
            urlImage = value.data()!['downloadUrl']??null;
            print(urlImage);
          });
    });
  }

  AnimationController? controller;

  Animation? sizeAnimation;
  Animation? colorAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 5));
    colorAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller!,
            curve: Interval(0.75, 1.0, curve: Curves.easeOut)
        )
    );
    controller!.forward();
    controller!.addListener(() {
      setState(() {});
    });
    ReloadImage();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Transform.scale(
      scale: colorAnimation!.value,
      child: MaterialApp(
        color : Color(0xFFF2F2F2),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme:GoogleFonts.lexendTextTheme(
            )
        ),
        home: BaseView<HomeScreenViewModel>(
            onModelReady: (model) => {
                  model.generateRandomNumber(),
            },
            builder: (context, model, child) {
              return DefaultTabController(
                length: 1,
                child: Scaffold(
                  backgroundColor:  Color(0xFFF2F2F2),
                  appBar: AppBar(
                    backgroundColor: Color(0xF9F9F9F9),
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
                        mainAxisAlignment:  MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: new BorderRadius.circular(10.0),
                            child: urlImage!= null? Image.network(
                              '$urlImage',
                              width:50,
                              height:50,
                              errorBuilder: (context, error, stackTrace) {
                                print(error); //do something
                                return Container();
                              },
                              loadingBuilder: (context,child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.black,
                                    value: loadingProgress.expectedTotalBytes != null
                                        ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                            ): ClipRRect(
                              child: CircleAvatar(
                                backgroundImage:  AssetImage(
                                    'assets/images/empty_avatar.png'
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, ${name!.substring(0,name!.indexOf(' '))}',
                                style: TextStyle(
                                  color : Colors.black,
                                  fontSize: 24
                                ),
                              ),
                              Text(
                                  new DateFormat.yMMMMd('en_US').format(new DateTime.now()).toString(),
                              style: TextStyle(
                                color: Colors.black
                              ),)
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    leadingWidth: getProportionateScreenWidth(170),
                    bottom: PreferredSize(
                      child: TabBar(
                        padding: EdgeInsets.only(bottom:10),
                          indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                          isScrollable: true,
                          unselectedLabelColor: Colors.grey.withOpacity(0.3),
                          indicatorColor: Color(0xFF464646),
                          tabs: [
                            Tab(
                              child: Text(
                                'Living Room',
                                style: TextStyle(
                                  color : Colors.black,
                                    fontSize: 17
                                ),
                              ),
                            ) ,
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
                    ],
                  ),
                  bottomNavigationBar: CustomBottomNavBar(model),
                ),
              );
            }),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius}) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _painter;
  }

}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
    ..color = color
    ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
