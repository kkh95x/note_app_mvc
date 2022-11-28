import 'package:flutter/material.dart';
import 'package:note_mnc/features/Notes/Manager/notes_provider_manager.dart';
import 'package:provider/provider.dart';

import '../../Model/note_model.dart';

class NoteCard extends StatelessWidget {
  final NoteModel noteModel;
  final int index;

  const NoteCard(this.noteModel, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.start,
                noteModel.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                noteModel.description,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                
                Provider.of<NotesProvider>(context, listen: false)
                    .deletMyNote(index);
              },
              icon: const Icon(Icons.delete)),
        ],
      ),
    );
  }
}
