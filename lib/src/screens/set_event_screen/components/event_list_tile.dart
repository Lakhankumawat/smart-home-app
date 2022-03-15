import 'package:flutter/material.dart';

class EventListTile extends StatelessWidget {
  const EventListTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(text),
        leading: Icon(
          Icons.event_rounded,
          color: Color(0xFFFFC542),
        ),
        trailing: Icon(Icons.chevron_right_rounded),
        tileColor: Color(0xFFF2F2F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(10),
            left: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
