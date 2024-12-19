import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_list_cubit/cubits/add_cubit/add_states.dart';

class AddCubit extends Cubit <AddStates>{
  AddCubit() : super(AddInitail());
  List<String> notes = [];

  void addFun({required String note}) {
    notes.add(note);
    emit(AddNote());
  }
  void deleteFun({required String note}) {
    notes.remove(note);
    emit(RemoveNote());
  }

}
