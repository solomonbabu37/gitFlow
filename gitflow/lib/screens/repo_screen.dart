import 'package:flutter/material.dart';

class RepoScreen extends StatefulWidget {
  final String repoName;
  const RepoScreen({super.key, required this.repoName});

  @override
  State<RepoScreen> createState() => _RepoScreenState();
}

class _RepoScreenState extends State<RepoScreen> {
  String currentBranch = 'main';
  List<String> branches = ['main'];
  List<String> commitHistory = [];

  final TextEditingController commitMessageController = TextEditingController();
  final TextEditingController newBranchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
