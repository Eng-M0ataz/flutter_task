import 'package:flutter/material.dart';
import 'package:task_porject/Features/home/views/widgets/home_view_body.dart';
import 'package:task_porject/core/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody(), appBar: CustomAppBar());
  }
}
