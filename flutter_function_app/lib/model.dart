import 'package:flutter/material.dart';
import 'package:flutter_function_app/drag_pinch/pinch_drag_page.dart';
import 'package:flutter_function_app/get_json/get_json_page.dart';
import 'package:flutter_function_app/stop_watch/stop_watch_page.dart';
import 'package:flutter_function_app/video_player/video_player_page.dart';

class Functions{
  String name;
  String description;
  dynamic page;
  Functions({required this.name, required this.description, required this.page});
}

 List<Functions> functionsList = [
   Functions(name: 'getJsonFile', description: "Get data from Json file.", page: GetJsonFromFilePage()),
   Functions(name: 'VideoPlayer', description: "Using video_player package.", page: VideoPlayerPage()),
   Functions(name: 'Pinch and Drag Image', description: "Using InteractiveViewer", page: PinchDragPage()),
   Functions(name: 'StopWatch', description: "Using Stopwatch class from dart core library", page: StopWatchPage()),
 ];

