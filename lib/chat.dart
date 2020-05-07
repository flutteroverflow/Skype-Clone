import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var messages_list = [
    {
      "name": "Daniel",
      "recent": "newest list",
      "date": "2019/05/16",
    },
    {
      "name": "Xavier",
      "recent": "Hello",
      "date": "2019/05/16",
    },
    {
      "name": "Marcelo",
      "recent": "Thank you",
      "date": "2019/05/16",
    },
    {
      "name": "Diego",
      "recent": "Bye",
      "date": "2019/05/16",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages_list.length,
        itemExtent: 100.0,
        itemBuilder: (BuildContext context, int index) {
          return Single_pack(
            message_name: messages_list[index]['name'],
            message_recent: messages_list[index]['recent'],
            message_date: messages_list[index]['date'],
          );
        });
  }
}

class Single_pack extends StatelessWidget {
  final message_name;
  final message_recent;
  final message_date;

  Single_pack({this.message_name, this.message_recent, this.message_date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 64.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            message_name,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 20.0),
                          ),
                          Text(
                            message_date,
                            style: TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              message_recent,
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}