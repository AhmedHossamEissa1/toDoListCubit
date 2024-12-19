import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_list_cubit/cubits/add_cubit/add_cubit.dart';
import 'package:simple_to_do_list_cubit/list_app_cubit_body.dart';

void main() {
  runApp(listAppCubit());
}

class listAppCubit extends StatelessWidget {
  const listAppCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => AddCubit(),
        child: listAppCubitBody(),
      ),
    );
  }
}
