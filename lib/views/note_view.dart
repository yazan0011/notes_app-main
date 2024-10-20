import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/note_cubit/note_cubit.dart';
import 'package:notes/widgets/custom_appbar.dart';
import 'package:notes/widgets/notes_list.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});
  static const String id = 'noteview';

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NoteCubit>(context).featchNote();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppbar(),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
