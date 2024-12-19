abstract class AddStates {}

class AddInitail extends AddStates {}

class AddNote extends AddStates {}
class RemoveNote extends AddStates {}

class ReturnNotes extends AddStates {
  List<String> notes;
  ReturnNotes({required this.notes});
}
