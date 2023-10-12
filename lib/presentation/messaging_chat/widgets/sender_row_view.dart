import 'package:flutter/material.dart';

class SenderRowView extends StatelessWidget {
  const SenderRowView({Key? key, required this.senderMessage}) : super(key: key);

  final String senderMessage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 15,
          fit: FlexFit.tight,
          child: Container(
            width: 50.0,
          ),
        ),
        Flexible(
          flex: 72,
          fit: FlexFit.tight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(top:10,right: 10.0, bottom: 0.0),
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
                        left: 8.0, right: 5.0, top: 0.0, bottom: 0.0),
                    padding: const EdgeInsets.only(
                        left: 9.0, right: 9.0, top: 9.0, bottom: 9.0),
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFFEB1933),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    child: Text(
                      senderMessage,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white,fontSize: 14),
                    ),
                  ),
                ],
              ),

            ],
          ),
          //
        ),
         Flexible(
          flex: 13,
          fit: FlexFit.tight,
          child: Padding(
            padding: EdgeInsets.only(right: 10.0, top: 1.0, bottom: 0.0),
            child: Container(
              height: 60,
              width: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',),
                maxRadius: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
