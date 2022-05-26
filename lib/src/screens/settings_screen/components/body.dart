import 'package:flutter/material.dart';

class SwitchTiles extends StatefulWidget {
  const SwitchTiles({Key? key}) : super(key: key);

  @override
  State<SwitchTiles> createState() => _SwitchTilesState();
}

class _SwitchTilesState extends State<SwitchTiles> {
  @override
  Widget build(BuildContext context) {
    
    const bool givenValue = false;
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 24.44, 19, 0),
      child: Container(
        height: 182.56,
        width: 326,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color:const  Color.fromRGBO(241, 241, 241, 1),
        ),
        child: ListView(
          children: [
            SwitchListTile(
              activeTrackColor:const  Color.fromRGBO(61, 213, 152, 1),
              inactiveTrackColor:const  Color.fromRGBO(210, 210, 210, 1),
              activeColor: const Color.fromRGBO(70, 70, 70, 1),
              inactiveThumbColor:const  Color.fromRGBO(70, 70, 70, 1),
              value: givenValue,
              secondary: Image.asset('assets/images/settings/star.png'),
              title: const Text("Option 1", style: TextStyle(fontFamily: 'Abeezee')),
              onChanged: (givenValue) {
                setState(() {
                  givenValue = true;
                });
              },
            ),
            SwitchListTile(
              selected: true,
              activeTrackColor:const  Color.fromRGBO(61, 213, 152, 1),
              inactiveTrackColor:const  Color.fromRGBO(210, 210, 210, 1),
              activeColor:const  Color.fromRGBO(70, 70, 70, 1),
              inactiveThumbColor:const  Color.fromRGBO(70, 70, 70, 1),
              value: givenValue,
              secondary: Image.asset('assets/images/settings/chat.png'),
              title: const Text("Option 2", style: TextStyle(fontFamily: 'Abeezee')),
              onChanged: (givenValue) {
                setState(() {
                  givenValue = true;
                });
              },
            ),
            SwitchListTile(
              activeTrackColor: const Color.fromRGBO(61, 213, 152, 1),
              inactiveTrackColor: const Color.fromRGBO(210, 210, 210, 1),
              activeColor:const  Color.fromRGBO(70, 70, 70, 1),
              inactiveThumbColor:const  Color.fromRGBO(70, 70, 70, 1),
              value: givenValue,
              secondary: Image.asset('assets/images/settings/bell.png'),
              title:const  Text("Option 3", style: TextStyle(fontFamily: 'Abeezee')),
              onChanged: (givenValue) {
                setState(() {
                  givenValue = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SettingTile extends StatelessWidget {
  const SettingTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 19, 0),
      child: Container(
        height: 182.56,
        width: 326,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color:const  Color.fromRGBO(241, 241, 241, 1),
        ),
        child: ListView(
          children: [
            InkWell(
              onTap: () {},
              child: ListTile(
                  leading: Image.asset('assets/images/settings/heart.png'),
                  title: const Text(
                    "Option 1",
                    style: TextStyle(fontFamily: 'Abeezee'),
                  ),
                  trailing:const  Icon(Icons.navigate_next)),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  leading: Image.asset('assets/images/settings/bookmark.png'),
                  title:
                     const  Text("Option 2", style: TextStyle(fontFamily: 'Abeezee')),
                  trailing:const  Icon(Icons.navigate_next)),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  leading: Image.asset('assets/images/settings/home.png'),
                  title:
                     const  Text("Option 3", style: TextStyle(fontFamily: 'Abeezee')),
                  trailing:const  Icon(Icons.navigate_next)),
            ),
          ],
        ),
      ),
    );
  }
}
