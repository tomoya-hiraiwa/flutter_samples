import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interface/introductions/basic_widgets_page.dart';
import 'package:flutter_interface/introductions/extra_stateful_widget_page.dart';
import 'package:flutter_interface/introductions/handling_gesture_page.dart';
import 'package:flutter_interface/introductions/material_compornent_page.dart';
import 'package:flutter_interface/introductions/stateful_widget_page.dart';
import 'package:flutter_interface/material_widgets/material_buttons_page.dart';
import 'package:flutter_interface/material_widgets/material_fab_page.dart';

class PageItem{
  String title;
  String description;
  dynamic page;
  
  PageItem({required this.title, required this.description, required this.page});
}

List<PageItem> introductions = [
  PageItem(title: "Basic widgets", description: "create UI using basic widgets (Not using Scaffold and AppBar)", page: const BasicWidgetsPage()),
  PageItem(title: "Material Components", description: "create UI using Material Components (Using Scaffold and AppBar)", page: const MaterialComponentsPage()),
  PageItem(title: "Handling Gesture", description: "Handling Gesture using GestureDetector", page: const HandlingGesturePage()),
  PageItem(title: "StatefulWidget", description: "Create Counter using StatefulWidget", page: const StatefulWidgetPage()),
  PageItem(title: "Extra StatefulWidget", description: "Create Stateful List", page:  const ExtraStatefulWidgetPage()),
];

List<PageItem> materialWidgets = [
  PageItem(title: "Buttons", description: "Material3 Button", page: const MaterialButtonsPage()),
  PageItem(title: "FABs", description: "Material3 Floating Action Button", page: const MaterialFabPage()),
];

List<PageItem> getPage(int index) {
  switch(index){
    case 0: return introductions;
    case 1: return materialWidgets;
    default: return introductions;
  }
}

List<Tab> tabItems = const [
  Tab(text: "Introductions"),
  Tab(text: "Material Widgets"),
];

