abstract class NoteStates {}

class AddNoteInitial extends NoteStates {}

class AddNoteLoading extends NoteStates {}

class AddNoteSuccess extends NoteStates {}

class AddNoteFailure extends NoteStates {
  final String errorMessage;

  AddNoteFailure({required this.errorMessage});
}
   