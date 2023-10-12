import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/constants/svg_constants.dart';
import 'package:grandizar_customer_v2/presentation/messaging_chat/widgets/chat_list_view.dart';
import '../../common/custom_app_bar.dart';
import '../global_members.dart';
import '../message_data_modal.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ChatMessagingScreen extends StatefulWidget {
  const ChatMessagingScreen({Key? key}) : super(key: key);

  @override
  MyChatAppState createState() => MyChatAppState();
}

class MyChatAppState extends State<ChatMessagingScreen> {
  TextEditingController textEditingController = TextEditingController();
  late String senderMessage, receiverMessage;
  ScrollController scrollController = ScrollController();

  Future<void> scrollAnimation() async {
    return await Future.delayed(
        const Duration(milliseconds: 100),
            () => scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: CustomAppBar(title: 'Message',
        titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Jone', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.black),),
          Text('Delivery man', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.normal,color: Colors.black),)
        ],),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: InkWell(
            child: Icon(Icons.call,color: Colors.red),
          ),
        )
      ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatListView(scrollController: scrollController)),
          Container(
            // height: 50,

            margin: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFF0F5FA),
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
                  // child: Transform.rotate(
                  //     angle: 45,
                      child: const Icon(
                        Icons.tag_faces,
                        color: Color(0xFFAFAFB0),
                      )
                  //),
                ),
                Expanded(
                  child: TextFormField(
                    controller: textEditingController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 6,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: 'Write Some thing',
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                      border: InputBorder.none,
                    ),

                  ),
                ),
                Container(
                  margin:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 11.0,top: 11),
                  // child: Transform.rotate(
                  //   angle: -3.14 / 5,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            messageList.add(
                                MessageData(textEditingController.text, true));
                            textEditingController.clear();
                            scrollAnimation();
                          });
                        },
                        onLongPress: () {
                          setState(() {
                            messageList.add(
                                MessageData(textEditingController.text, false));
                            textEditingController.clear();
                            scrollAnimation();
                          });
                        },
                        child: SvgPicture.asset(SvgConstants.send,width: 35,height: 35,),
                      ),
                    ),
                  //),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
