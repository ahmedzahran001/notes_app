import 'package:NoteApp/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
