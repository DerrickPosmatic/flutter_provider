import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/user_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a new name',
              ),
              controller: nameController,
            ),
          ),
          IconButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUserName(newName: nameController.text);
                // Provider.of<UserProvider>(context, listen: false).userName =
                //     nameController.text;
              },
              icon: const Icon(Icons.save))
        ],
      ),
    );
  }
}
