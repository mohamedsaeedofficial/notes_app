import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constent.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNoteStates> {
  AddNotesCubit() : super(AddNoteInitial());

  Color color = const Color(0xffE4FDE1) ;
  addNote(NoteModel note) async {
    note.color = color.value ;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      emit(AddNoteSuccess());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
