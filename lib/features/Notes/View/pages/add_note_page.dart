//big text
import 'package:flutter/material.dart';
import 'package:note_mnc/core/utils/Constants/constants.dart';
import 'package:note_mnc/features/Notes/Manager/notes_provider_manager.dart';

import 'package:provider/provider.dart';

import '../../../../core/style/text_style.dart';

class AddNotePage extends StatelessWidget {
  AddNotePage({Key? key}) : super(key: key);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: titleController,
              decoration: textFieldDecoration,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: Constants.noteDescriptionHint,
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          TextButton(
            onPressed: () {
              Provider.of<NotesProvider>(context, listen: false)
                  .addMyNote(titleController.text, descriptionController.text);
              Navigator.pop(context);
            },
            child: Text("Add Your  Note"),
            style: TextButton.styleFrom(
                backgroundColor: Colors.white, padding: EdgeInsets.all(10)),
          )
        ],
      ),
    );
  }
}
