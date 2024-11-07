import 'package:flutter/material.dart';
import 'package:flutter_animation_sample_app/introductions/animation_controller_page.dart';
import 'package:flutter_animation_sample_app/introductions/curved_animation_page.dart';
import 'package:flutter_animation_sample_app/introductions/tween_animation_page.dart';
import 'package:flutter_animation_sample_app/simple_animations/animated_container_page.dart';
import 'package:flutter_animation_sample_app/simple_animations/fade_animation_page.dart';
import 'package:flutter_animation_sample_app/simple_animations/hero_animation_page.dart';

class PageItem{
  String title;
  String description;
  dynamic page;

  PageItem({required this.title, required this.description, required this.page});
}

List<PageItem> introductions  = [
 PageItem(title: "AnimationController", description: "manage the animation.", page: const AnimationControllerPage()),
 PageItem(title: "Tween Animation", description: "Setting Animation value.", page: const TweenAnimationPage()),
 PageItem(title: "Curved Animation", description: "Setting Animation Curve.", page: const CurvedAnimationPage()),
];

List<PageItem> simpleAnimations  = [
  PageItem(title: "Animated Container", description: "change Size, Color, Radius Container.", page: const AnimatedContainerPage()),
  PageItem(title: "Fade Animation", description: "Fade animation using AnimatedOpacity.", page: const FadeAnimationPage()),
  PageItem(title: "Hero Animation", description: "Navigate page with Hero Animation.", page: const HeroAnimationPage1()),

];

List<List<PageItem>> allPages = [
  introductions,
  simpleAnimations
];



List<Tab> tabItems = const [
Tab(text: "Introductions"),
Tab(text: "Simple Animations"),

];