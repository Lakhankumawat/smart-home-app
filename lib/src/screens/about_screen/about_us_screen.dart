import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUs extends StatelessWidget {
  static String routeName = '/about-us';
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
        ListTile(
          leading: Text('About',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600
          ),),
          trailing: Icon(Icons.info, color: Colors.black, size: 32,),
        ),
        Center(child: Column(
          children: [
            Text('Domus',style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700
            ),),
            Text('Smart Home App',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300
            ),),
            Text('Version: 1.0.1 (alpha)',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300
            ),),
          ],
        )),
        ListTile(
          leading: Icon(Icons.account_circle, color: Colors.black,size: 24,),
          title: Text('Lead Developer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text('Lakhan Kumawat',
          style: TextStyle(
            fontSize: 14
          ),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle, color: Colors.black),
          title: Text('Domus Team',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text('People who help with development and testing',
            style: TextStyle(
                fontSize: 14
            ),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle, color: Colors.black),
          title: Text('Acknowledgement',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text('People and open source projects that helped the development of Domus',
            style: TextStyle(
                fontSize: 14
            ),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle, color: Colors.black),
          title: Text('Help',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text('Answers to frequently asked questions',
            style: TextStyle(
                fontSize: 14
            ),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle, color: Colors.black),
          title: Text('Social Networks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text('Follow Domus on social networks',
            style: TextStyle(
                fontSize: 14
            ),),
          onTap: (){},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Made with ',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),),
            Icon(Icons.favorite,size: 13,),
            Text(' in IN',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300
            ),),
          ],
        )
      ],
      ),
    );
  }
}
