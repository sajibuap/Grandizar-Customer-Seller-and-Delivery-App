import 'package:flutter/material.dart';

class NotificationListItem extends StatefulWidget {
  final String? name;
  final String? messageText;
  final String? imageUrl;
  final String? time;
  final bool? isMessageRead;
  const NotificationListItem(
      {@required this.name,
      @required this.messageText,
      @required this.imageUrl,
      @required this.time,
      @required this.isMessageRead});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<NotificationListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        widget.imageUrl!,
                      ),
                      maxRadius: 30,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name!,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          //SizedBox(height: 6,),
                          Text(
                            widget.messageText!,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade500,
                                fontWeight: widget.isMessageRead!
                                    ? FontWeight.normal
                                    : FontWeight.normal),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.time!,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade500,
                                fontWeight: widget.isMessageRead!
                                    ? FontWeight.normal
                                    : FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                width: 55,
                height: 55,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
