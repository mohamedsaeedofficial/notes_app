import 'package:note_app/models/note_model.dart';

abstract class NoteStates {}

class NoteInitial extends NoteStates {}

class NoteLoading extends NoteStates {}

class NoteSuccess extends NoteStates {
  final List<NoteModel> notes ;

  NoteSuccess({required this.notes});
}

class NoteFailure extends NoteStates {
  final String errorMessage;

  NoteFailure({required this.errorMessage});
}
   