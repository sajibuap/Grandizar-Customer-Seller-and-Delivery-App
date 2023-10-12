import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/messaging_user_list/views/widgets/conversation_list_item.dart';
import '../model/chat_user.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/images/miraj.jpg",
        time: "19:17"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Message'),
        backgroundColor: Color(0xFFFFFFFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // SafeArea(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: 16,right: 16,top: 16),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         Row(
            //           children: [
            //             SvgPicture.asset(SvgConstants.back,height: 40,width: 40,),
            //             Text(" Messages",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 26, left: 16, right: 16, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFABABAB),
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF0F5FA),
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xFFF0F5FA))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffFFFFFF)),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                //  physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
