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
          leading: const Text('About',
          style: TextStyle(
            fontSize: 36,
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w600
          ),),
          trailing: SvgPicture.asset('assets/icons/svg/info.svg')
          // Icon(Icons.info, color: Colors.black, size: 32,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Center(child: Column(
            children: const [
              Text('Domus',style: TextStyle(fontFamily: 'Lexend',
                fontSize: 48,
                fontWeight: FontWeight.w700
              ),),
              Text('Smart Home App',style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w300,
                color: Color(0xff9B9B9B)
              ),),
              SizedBox(height: 11,),
              Text('Version: 1.0.1 (alpha)',style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w300
              ),),
            ],
          )),
        ),
        const SizedBox(height: 39,),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 33.7,right: 10),
          leading: SvgPicture.asset('assets/icons/svg/profile.svg'),
          title: const Text('Lead Developer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend',
              fontSize: 20,
            ),
          ),
          subtitle: const Text('Lakhan Kumawat',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w300
          ),),
          onTap: (){},
        ),
        const SizedBox(height: 12,),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 33.7,right: 10),
          leading: SvgPicture.asset('assets/icons/svg/team.svg'),
          title: const Text('Domus Team',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend',
              fontSize: 20,
            ),
          ),
          subtitle: const Text('People who help with development and testing',
            style: TextStyle(
                fontSize: 14,
              fontFamily: 'Lexend',
            ),),
          onTap: (){},
        ),
        const SizedBox(height: 12,),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 33.7,right: 10),
          leading: SvgPicture.asset('assets/icons/svg/star.svg',),
          title: const Text('Acknowledgement',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend',
              fontSize: 20,
            ),
          ),

          subtitle: const Text('People and open source projects that helped the development of Domus',
            style: TextStyle(
                fontSize: 14,
              fontFamily: 'Lexend',
            ),),
          onTap: (){},
        ),
        const SizedBox(height: 12,),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 33.7,right: 10),
          leading: SvgPicture.asset('assets/icons/svg/help.svg'),
          title: const Text('Help',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend',
              fontSize: 20,
            ),
          ),
          subtitle: const Text('Answers to frequently asked questions',
            style: TextStyle(
                fontSize: 14,
              fontFamily: 'Lexend',
            ),),
          onTap: (){},
        ),
        const SizedBox(height: 12,),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 33.7,right: 10),
          leading: SvgPicture.asset('assets/icons/svg/chat.svg'),
          title: const Text('Social Networks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend',
              fontSize: 20,
            ),
          ),
          subtitle: const Text('Follow Domus on social networks',
            style: TextStyle(
                fontSize: 14,
              fontFamily: 'Lexend',
            ),),
          onTap: (){},
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Made with ',style: TextStyle(
                fontSize: 18,
                  fontFamily: 'Lexend',
                fontWeight: FontWeight.w300
              ),),
              SvgPicture.asset('assets/icons/svg/heart.svg'),
              const Text(' in IN',style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w300
              ),),
            ],
          ),
        )
      ],
      ),
    );
  }
}
