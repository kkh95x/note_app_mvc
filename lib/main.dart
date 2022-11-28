import 'package:flutter/material.dart';
import 'package:note_mnc/features/Notes/View/pages/home_page.dart';
import 'package:provider/provider.dart';

import 'features/Notes/Manager/notes_provider_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesProvider>(
      create: (ctx) => NotesProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
