import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/note_cubit/notes_cubit.dart';
import 'package:note_app/main.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/note_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

final TextEditingController _searchController = TextEditingController();

  void _showSearchInput() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: _performSearch,
              ),
            ),
          ),
        );
      },
    );
  }

  void _performSearch() {
    final searchTerm = _searchController.text.toLowerCase().trim();
    if (searchTerm.isNotEmpty) {
      // Perform the search operation here
      showToast('Searching for: $searchTerm');
      Navigator.of(context).pop(); 
      setState(() {
        
      });
    }
  }

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
            onTap: () {
              _showSearchInput();
              setState(() {
                
              });
            },
            title: 'Notes',
            icon: Icons.search,
          ),
          const Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
