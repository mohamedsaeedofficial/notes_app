import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constent.dart';
import 'package:note_app/cubits/add_note_cubit/note_cubit/note_states.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit() : super(NoteInitial());

  addNote(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NoteSuccess(notes: notes));
      await noteBox.add(note);
    } catch (e) {
      emit(NoteFailure(errorMessage: e.toString()));
    }
  }
}
