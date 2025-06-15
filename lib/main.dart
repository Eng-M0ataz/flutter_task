import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_porject/Features/home/data/repo/home_repo.dart';
import 'package:task_porject/Features/home/views/manger/cubit/products_cubit.dart';
import 'package:task_porject/core/get_it/get_it.dart';

import 'Features/home/views/home_view.dart';

void main() {
  setupGetIt();
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              ProductsCubit(homeRepo: getIt<HomeRepo>())..getProducts(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}
