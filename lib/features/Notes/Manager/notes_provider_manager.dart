import 'package:flutter/material.dart';

import '../Model/note_model.dart';

class NotesProvider with ChangeNotifier {
  List<NoteModel> _myNotes = [];

  List<NoteModel> get getMyNotes {
    return _myNotes;
  }

  void addMyNote(String title, String description) {
    NoteModel noteModel = NoteModel(title, description);
    _myNotes.add(noteModel);
    notifyListeners();
  }

  void deletMyNote(int i) {
    _myNotes.removeAt(i);

    notifyListeners();
  }

  //delete note

//update note
}
