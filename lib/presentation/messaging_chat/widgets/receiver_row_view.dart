import 'package:flutter/material.dart';

class ReceiverRowView extends StatelessWidget {
  const ReceiverRowView({Key? key, required this.receiverMessage}) : super(key: key);

  final String receiverMessage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Flexible(
          flex: 13,
          fit: FlexFit.tight,
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, top: 0.0, bottom: 0.0),
            child: Container(
              height: 60,
              width: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                maxRadius: 30,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 72,
          fit: FlexFit.tight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0, bottom: 0.0,top: 8.0),
                child: const Text(
                  '8:55 AM, Today',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 7.0,
                  ),
                ),
              ),
              Wrap(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 5.0, right: 8.0, top: 0.0, bottom: 2.0),
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 5.0, top: 9.0, bottom: 9.0),
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFFF0F5FA),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      receiverMessage,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),

            ],
          ),
          //
        ),
        Flexible(
          flex: 15,
          fit: FlexFit.tight,
          child: Container(
            width: 50.0,
          ),
        ),
      ],
    );
  }
}
