/*
	 * Created by Rezaul Karim
	 * Created on Thu Oct 05 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: track_order_timeline.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as custonColor;

const kTileHeight = 50.0;

class TrackerTimeLine extends StatelessWidget {
  final List<String> trackers;
  const TrackerTimeLine({super.key, required this.trackers});

  @override
  Widget build(BuildContext context) {
    final data = _TimelineStatus.values;
    return Flexible(
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        child: Timeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
            connectorTheme: ConnectorThemeData(
              thickness: 3.0,
              color: Color(0xffd3d3d3),
            ),
            indicatorTheme: IndicatorThemeData(
              size: 15.0,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 20.0),
          builder: TimelineTileBuilder.connected(
            contentsBuilder: (context, index) {
              Text text = Text(
                trackers[index],
                style: TextStyle(color: custonColor.bgColor1),
              );
              switch (data[index]) {
                case _TimelineStatus.done:
                  text = Text(
                    trackers[index],
                    style: TextStyle(color: custonColor.themeColor),
                  );
                case _TimelineStatus.sync:
                  text = Text(
                    trackers[index],
                    style: TextStyle(color: custonColor.bgColor1),
                  );
                case _TimelineStatus.inProgress:
                  text = Text(
                    trackers[index],
                    style: TextStyle(color: custonColor.bgColor1),
                  );
                case _TimelineStatus.todo:
                default:
                  text = Text(
                    trackers[index],
                    style: TextStyle(color: custonColor.bgColor1),
                  );
              }
              return Padding(
                  padding: const EdgeInsets.only(left: 14), child: text);
            },
            connectorBuilder: (_, index, __) {
              if (index == 0) {
                return SolidLineConnector(
                  color: custonColor.themeColor,
                  thickness: 2,
                );
              } else {
                return SolidLineConnector(
                  thickness: 2,
                );
              }
            },
            indicatorBuilder: (_, index) {
              switch (data[index]) {
                case _TimelineStatus.done:
                  return DotIndicator(
                    color: custonColor.themeColor,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 10.0,
                    ),
                  );
                case _TimelineStatus.sync:
                  return DotIndicator(
                    color: custonColor.themeColor,
                    child: Icon(
                      Icons.sync,
                      size: 10.0,
                      color: Colors.white,
                    ),
                  );
                case _TimelineStatus.inProgress:
                  return DotIndicator(
                    color: Color(0xffbabdc0),
                    child: Icon(
                      Icons.check,
                      size: 10.0,
                      color: Colors.white,
                    ),
                  );
                case _TimelineStatus.todo:
                default:
                  return DotIndicator(
                    color: Color(0xffbabdc0),
                    child: Icon(
                      Icons.check,
                      size: 10.0,
                      color: Colors.white,
                    ),
                  );
              }
            },
            itemExtentBuilder: (_, __) => kTileHeight,
            itemCount: data.length,
          ),
        ),
      ),
    );
  }
}

enum _TimelineStatus {
  done,
  sync,
  inProgress,
  todo,
}
