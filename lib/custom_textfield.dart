import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_list_cubit/cubits/add_cubit/add_cubit.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a controller for the TextField
    TextEditingController _controller = TextEditingController();

    return SizedBox(
      width: 350,
      height: 70,
      child: TextField(
        controller: _controller, // Set the controller to manage the text
        onSubmitted: (value) {
          // Submit the note and clear the text field
          BlocProvider.of<AddCubit>(context).addFun(note: value);
          _controller.clear(); // Clear the text field after submission
        },
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Trigger the note submission when the icon is pressed
              String value = _controller.text;
              if (value.isNotEmpty) {
                BlocProvider.of<AddCubit>(context).addFun(note: value);
                _controller.clear(); // Clear the text field after submission
              }
            },
          ),
          hintText: "Enter a note",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
