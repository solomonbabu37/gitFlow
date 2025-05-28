import 'package:flutter/material.dart';
import 'package:gitflow/models/repo_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Repository> repositories = [];
  final TextEditingController repoController = TextEditingController();

  void createRepository() {
    if (repoController.text.isEmpty) return;

    setState(() {
      repositories.add(
        Repository(name: repoController.text, createdAt: DateTime.now()),
      );
    });

    repoController.clear();
    Navigator.pop(context); 
  }

  void showCreateRepoDialog() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text('Create New Repository'),
            content: TextField(
              controller: repoController,
              decoration: const InputDecoration(
                hintText: 'Enter repository name',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: createRepository,
                child: const Text('Create'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GitFlow Sim')),
      body:
          repositories.isEmpty
              ? const Center(child: Text('No repositories created yet.'))
              : ListView.builder(
                itemCount: repositories.length,
                itemBuilder: (_, index) {
                  final repo = repositories[index];
                  return ListTile(
                    title: Text(repo.name),
                    subtitle: Text('Created: ${repo.createdAt}'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Next step: Navigate to RepoScreen
                    },
                  );
                },
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: showCreateRepoDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
