import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interface/introductions/basic_widgets_page.dart';
import 'package:flutter_interface/introductions/extra_stateful_widget_page.dart';
import 'package:flutter_interface/introductions/handling_gesture_page.dart';
import 'package:flutter_interface/introductions/material_compornent_page.dart';
import 'package:flutter_interface/introductions/stateful_widget_page.dart';
import 'package:flutter_interface/material_widgets/alert_dialog_page.dart';
import 'package:flutter_interface/material_widgets/appbar_page.dart';
import 'package:flutter_interface/material_widgets/badge_page.dart';
import 'package:flutter_interface/material_widgets/bottom_appbar_page.dart';
import 'package:flutter_interface/material_widgets/bottom_sheet_page.dart';
import 'package:flutter_interface/material_widgets/checkbox_list_tile_page.dart';
import 'package:flutter_interface/material_widgets/circular_progress_indicator_page.dart';
import 'package:flutter_interface/material_widgets/fab_with_bottom_navigation_page.dart';
import 'package:flutter_interface/material_widgets/fab_with_scaffold_page.dart';
import 'package:flutter_interface/material_widgets/icon_button_page.dart';
import 'package:flutter_interface/material_widgets/linear_progress_indicator_page.dart';
import 'package:flutter_interface/material_widgets/list_tile_page.dart';
import 'package:flutter_interface/material_widgets/material_buttons_page.dart';
import 'package:flutter_interface/material_widgets/material_card_page.dart';
import 'package:flutter_interface/material_widgets/material_fab_page.dart';
import 'package:flutter_interface/material_widgets/radiobutton_list_tile_page.dart';
import 'package:flutter_interface/material_widgets/segmented_button_page.dart';
import 'package:flutter_interface/material_widgets/snackbar_page.dart';
import 'package:flutter_interface/material_widgets/switch_list_tile_page.dart';

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

List<PageItem> actionsWidgets = [
  PageItem(title: "Button", description: "Material3 Button", page: const MaterialButtonsPage()),
  PageItem(title: "FAB", description: "Material3 Floating Action Button", page: const MaterialFabPage()),
  PageItem(title: "FAB with Scaffold", description: "FAB in Scaffold bottom", page: const FabWithScaffoldPage()),
  PageItem(title: "FAB with BottomNavigation", description: "FAB in  BottomNavigation", page: const FabWithBottomNavigationPage()),
  PageItem(title: "Icon Button", description: "Material3 IconButton", page: const IconButtonPage()),
  PageItem(title: "Segmented Button", description: "Material Segmented Button", page: const SegmentedButtonPage()),
];

List<PageItem> communicationWidgets = [
  PageItem(title: "Badge", description: "Material Design badge", page: const BadgePage()),
  PageItem(title: "LinearProgressIndicator", description: "Material Design LinearProgressIndicator", page: const LinearProgressIndicatorPage()),
  PageItem(title: "CircularProgressIndicator", description: "Material Design CircularProgressIndicator", page: const CircularProgressIndicatorPage()),
  PageItem(title: "SnackBar", description: "Show message and action Bar", page: const SnackBarPage()),
];

List<PageItem> containmentWidgets = [
  PageItem(title: "AlertDialog", description: "Popup Material Dialog", page: const AlertDialogPage()),
  PageItem(title: "BottomSheet", description: "Popup Material BottomSheet", page: const BottomSheetPage()),
  PageItem(title: "Card", description: "Material Card", page: const MaterialCardPage()),
  PageItem(title: "ListTile", description: "Material ListTile", page: const ListTilePage()),
  PageItem(title: "CheckBox ListTile", description: "ListTile with CheckBox", page: const CheckBoxListTilePage()),
  PageItem(title: "RadioButton ListTile", description: "ListTile with RadioButton", page: const RadioButtonListTilePage()),
  PageItem(title: "Switch ListTile", description: "ListTile with Switch", page: const SwitchListTilePage()),
];

List<PageItem> navigationWidgets = [
  PageItem(title: "AppBar", description: "Material AppBar with Tabs", page: const AppBarPage()),
  PageItem(title: "Bottom AppBar", description: "Material Bottom AppBar with Tabs", page: const BottomAppBarPage()),
];


List<PageItem> getPage(int index) {
  switch(index){
    case 0: return introductions;
    case 1: return actionsWidgets;
    case 2: return communicationWidgets;
    case 3: return containmentWidgets;
    case 4: return navigationWidgets;
    default: return introductions;
  }
}

List<Tab> tabItems = const [
  Tab(text: "Introductions"),
  Tab(text: "Actions Widgets"),
  Tab(text: "Communication Widgets"),
  Tab(text: "Containment Widgets"),
  Tab(text: "Navigation Widgets"),
];

