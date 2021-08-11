import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/06-pasar_datos/profile_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                foregroundImage: NetworkImage(_.user.avatar ?? ""),
              ),
              SizedBox(height: 10.0),
              Text(_.user.firstName ?? ""),
              SizedBox(height: 5.0),
              Text(_.user.lastName ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
