import 'package:flutter/material.dart';
import 'package:note_mnc/core/utils/Constants/constants.dart';
import 'package:note_mnc/features/Notes/Manager/notes_provider_manager.dart';
import 'package:note_mnc/features/Notes/View/widgets/card_widget.dart';

import 'package:provider/provider.dart';

import 'add_note_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          Constants.homePageTitle,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => AddNotePage()));
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Consumer<NotesProvider>(
          builder: (ctx, data, child) {
            return ListView.builder(
                itemBuilder: (ctx, index) {
                  return NoteCard(data.getMyNotes[index], index);
                },
                itemCount: data.getMyNotes.length);
          },
        ),
      ),
    );
  }
}
