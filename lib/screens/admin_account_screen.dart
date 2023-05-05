import 'package:flutter/material.dart';

class AdminAccount extends StatefulWidget {
  const AdminAccount({super.key});

  @override
  State<AdminAccount> createState() => _AdminAccountState();
}

class _AdminAccountState extends State<AdminAccount> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: AppBar(
          title: const Text('welcome administrator john doe'),
        )
      ),
    );
  }
}
