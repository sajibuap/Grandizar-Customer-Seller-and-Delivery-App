import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/notification/views/widgets/notification_list_item.dart';
import '../../common/custom_app_bar.dart';
import '../model/chat_user.dart';

class NotificationListScreen extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<NotificationListScreen> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Your order is on the way",
        imageURL: "assets/images/miraj.jpg",
        time: "20 min ago"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: CustomAppBar(title: 'Notification'),
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
            //             Text(" Notifications",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                //  physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return NotificationListItem(
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
