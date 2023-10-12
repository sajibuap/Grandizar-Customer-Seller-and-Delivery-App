import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/messaging_chat/views/chat_messaging_screen.dart';

class ConversationList extends StatefulWidget {
  final String? name;
  final String? messageText;
  final String? imageUrl;
  final String? time;
  final bool? isMessageRead;
  const ConversationList(
      {@required this.name,
      @required this.messageText,
      @required this.imageUrl,
      @required this.time,
      @required this.isMessageRead});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
        //ChatMessagingScreen()), (Route<dynamic> route) => false);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ChatMessagingScreen()));
      },
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
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.messageText!,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
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
            Text(
              widget.time!,
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                  fontWeight: widget.isMessageRead!
                      ? FontWeight.normal
                      : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
