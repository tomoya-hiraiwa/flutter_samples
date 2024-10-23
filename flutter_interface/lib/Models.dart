import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interface/introductions/basic_widgets_page.dart';
import 'package:flutter_interface/introductions/extra_stateful_widget_page.dart';
import 'package:flutter_interface/introductions/handling_gesture_page.dart';
import 'package:flutter_interface/introductions/material_compornent_page.dart';
import 'package:flutter_interface/introductions/stateful_widget_page.dart';
import 'package:flutter_interface/containment_widgets/alert_dialog_page.dart';
import 'package:flutter_interface/navigation_widgets/appbar_page.dart';
import 'package:flutter_interface/communication_widgets/badge_page.dart';
import 'package:flutter_interface/navigation_widgets/bottom_appbar_page.dart';
import 'package:flutter_interface/containment_widgets/bottom_sheet_page.dart';
import 'package:flutter_interface/containment_widgets/checkbox_list_tile_page.dart';
import 'package:flutter_interface/selection_widgets/checkbox_page.dart';
import 'package:flutter_interface/selection_widgets/chip_page.dart';
import 'package:flutter_interface/communication_widgets/circular_progress_indicator_page.dart';
import 'package:flutter_interface/action_widgets/fab_with_bottom_navigation_page.dart';
import 'package:flutter_interface/action_widgets/fab_with_scaffold_page.dart';
import 'package:flutter_interface/action_widgets/icon_button_page.dart';
import 'package:flutter_interface/communication_widgets/linear_progress_indicator_page.dart';
import 'package:flutter_interface/containment_widgets/list_tile_page.dart';
import 'package:flutter_interface/action_widgets/material_buttons_page.dart';
import 'package:flutter_interface/containment_widgets/material_card_page.dart';
import 'package:flutter_interface/action_widgets/material_fab_page.dart';
import 'package:flutter_interface/navigation_widgets/navigation_bar_page.dart';
import 'package:flutter_interface/navigation_widgets/navigation_bar_page.dart';
import 'package:flutter_interface/navigation_widgets/navigation_drawer_page.dart';
import 'package:flutter_interface/navigation_widgets/navigation_rail_page.dart';
import 'package:flutter_interface/containment_widgets/radiobutton_list_tile_page.dart';
import 'package:flutter_interface/action_widgets/segmented_button_page.dart';
import 'package:flutter_interface/communication_widgets/snackbar_page.dart';
import 'package:flutter_interface/containment_widgets/switch_list_tile_page.dart';
import 'package:flutter_interface/navigation_widgets/tabbar_page.dart';
import 'package:flutter_interface/selection_widgets/datepicker_dialog_page.dart';
import 'package:flutter_interface/selection_widgets/menu_page.dart';
import 'package:flutter_interface/selection_widgets/radio_button_page.dart';
import 'package:flutter_interface/selection_widgets/slider_page.dart';
import 'package:flutter_interface/selection_widgets/switch_page.dart';
import 'package:flutter_interface/selection_widgets/timepicker_dialog_page.dart';
import 'package:flutter_interface/text_input_widgets/text_field_page.dart';

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
  PageItem(title: "NavigationBar", description: "Material3 NavigationBar", page: const NavigationBarPage()),
  PageItem(title: "NavigationDrawer", description: "Material3 NavigationDrawer", page: const NavigationDrawerPage()),
  PageItem(title: "Navigation Rail", description: "Material3 NavigationRail\n(required Tablet or webPage)", page: const NavigationRailPage()),
  PageItem(title: "TabBar", description: "Material3 TabBar in AppBar", page: const TabBarPage()),
];

List<PageItem> selectionWidgets = [
  PageItem(title: "CheckBox", description: "Material3 CheckBox", page: const CheckBoxPage()),
  PageItem(title: "Chip", description: "Material3 Chip\nInput,Filter,Action", page: const ChipPage()),
  PageItem(title: "DatePicker Dialog", description: "Material3 DatePickerDialog and DateRangePickerDialog", page: const DatePickerPage()),
  PageItem(title: "Menu", description: "Menu using PopupMenuButton\nnote: MenuAnchor is now available", page: const MenuPage()),
  PageItem(title: "Radio Button", description: "Material3 RadioButton in ListTile", page: const RadioButtonPage()),
  PageItem(title: "Slider", description: "Material Slider and RangeSlider", page: const SliderPage()),
  PageItem(title: "Switch", description: "Material3 Switch", page: const SwitchPage()),
  PageItem(title: "TimePicker Dialog", description: "Material3 TimePicker Dialog", page: const TimePickerDialogPage()),
];

List<PageItem> textInputWidgets = [
  PageItem(title: "TextField", description: "Material TextField", page: const TextFieldPage())
];


List<PageItem> getPage(int index) {
  switch(index){
    case 0: return introductions;
    case 1: return actionsWidgets;
    case 2: return communicationWidgets;
    case 3: return containmentWidgets;
    case 4: return navigationWidgets;
    case 5: return selectionWidgets;
    case 6: return textInputWidgets;
    default: return introductions;
  }
}

List<Tab> tabItems = const [
  Tab(text: "Introductions"),
  Tab(text: "Actions Widgets"),
  Tab(text: "Communication Widgets"),
  Tab(text: "Containment Widgets"),
  Tab(text: "Navigation Widgets"),
  Tab(text: "Selection Widgets"),
  Tab(text: "TextInput Widgets"),
];

