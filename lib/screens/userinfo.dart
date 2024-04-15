import 'package:crud/models/users.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context)!.settings.arguments as Users;

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Card(
          child: ListView(
            children: [
              ListTile(
                title: Text("Full Name"),
                subtitle: Text("${user.fullname}"),
              ),
              ListTile(
                title: Text("Email"),
                subtitle: Text("${user.email}"),
              ),
              ListTile(
                title: Text("Gender"),
                subtitle: Text("${user.gender}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
