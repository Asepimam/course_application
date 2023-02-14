import 'package:flutter/material.dart';
import 'package:course_application/state_util.dart';
import '../view/details_coureurs_view.dart';

class DetailsCoureursController extends State<DetailsCoureursView> implements MvcController {
  static late DetailsCoureursController instance;
  late DetailsCoureursView view;

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