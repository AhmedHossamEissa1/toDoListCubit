import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_list_cubit/cubits/add_cubit/add_cubit.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key, required this.note});
  final String note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 350,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(note),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              IconButton(
                  onPressed: () {
                    BlocProvider.of<AddCubit>(context).deleteFun(note: note);
                  },
                  icon: Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
