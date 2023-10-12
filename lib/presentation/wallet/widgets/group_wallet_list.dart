
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'custom_image.dart';

class GroupListWallet extends StatelessWidget {
  const GroupListWallet({super.key, required this.elements});
  final List elements;

  @override
  Widget build(BuildContext context) {
    return GroupedListView<dynamic, String>(
      elements: elements,
      groupBy: (element) => element['group'],
      groupComparator: (value1, value2) => value2.compareTo(value1),
      itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']),
      order: GroupedListOrder.ASC,
      useStickyGroupSeparators: true,
      groupSeparatorBuilder: (String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          ' $value',
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      itemBuilder: (c, element) {
        return Card(
          elevation: 2.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: SizedBox(
            child: ListTile(
              tileColor: Color(0xFFF0F5FA),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: CustomImageCircle(size: 30, icon: Icons.star),
              title: Text('+12 Points', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('3:15 PM', style: TextStyle(fontSize: 13),),
              trailing: Text("\$5.20", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
        );
      },
    );
  }
}