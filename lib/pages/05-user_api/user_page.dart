import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/05-user_api/widgets/users.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: Users(),
    );
  }
}
