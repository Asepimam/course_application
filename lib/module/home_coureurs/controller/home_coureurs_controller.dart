import 'package:flutter/material.dart';
import 'package:course_application/state_util.dart';
import '../view/home_coureurs_view.dart';

class HomeCoureursController extends State<HomeCoureursView> implements MvcController {
  static late HomeCoureursController instance;
  late HomeCoureursView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}