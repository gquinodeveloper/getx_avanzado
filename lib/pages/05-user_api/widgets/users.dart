import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/05-user_api/user_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      id: "users",
      builder: (_) {
        return ListView.builder(
          itemCount: _.users.length,
          itemBuilder: (context, index) {
            final user = _.users[index];
            return ListTile(
              title: Text(user.firstName ?? ""),
              subtitle: Text(user.email ?? ""),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  _.goProfile(user);
                },
              ),
            );
          },
        );
      },
    );
  }
}
