import 'package:flutter/material.dart';
import 'package:note_app/main.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
   createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
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
    final searchTerm = _searchController.text.trim();
    if (searchTerm.isNotEmpty) {
      // Perform the search operation here
      showToast('Searching for: $searchTerm');
      Navigator.of(context).pop(); // Close the search input dialog
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: _showSearchInput,
          ),
        ],
      ),
      body: const Center(
        child: Text('Note content will be displayed here'),
      ),
    );
  }
}
