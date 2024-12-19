import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_list_cubit/cubits/add_cubit/add_cubit.dart';
import 'package:simple_to_do_list_cubit/cubits/add_cubit/add_states.dart';
import 'package:simple_to_do_list_cubit/custom_note.dart';
import 'package:simple_to_do_list_cubit/custom_textfield.dart';

class listAppCubitBody extends StatelessWidget {
  const listAppCubitBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> notes = BlocProvider.of<AddCubit>(context).notes;
    return Scaffold(
        appBar: AppBar(
          title: Text("notes app"),
        ),
        body: Center(
          child: BlocBuilder<AddCubit, AddStates>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: notes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CustomNote(note: notes[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomTextfield(),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
