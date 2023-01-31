import 'package:flutter/material.dart';
import 'package:ui_screens/models/user/user_model.dart';

class Users_Screen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: "Mohamed Hussine", phone: "0123456"),
    UserModel(id: 2, name: "Eslam ahmed", phone: "4567899"),
    UserModel(id: 3, name: "Abo Gad Mohamed", phone: "01235568898"),
    UserModel(id: 1, name: "Mohamed Hussine", phone: "0123456"),
    UserModel(id: 2, name: "Eslam ahmed", phone: "4567899"),
    UserModel(id: 3, name: "Abo Gad Mohamed", phone: "01235568898"),
    UserModel(id: 1, name: "Mohamed Hussine", phone: "0123456"),
    UserModel(id: 2, name: "Eslam ahmed", phone: "4567899"),
    UserModel(id: 3, name: "Abo Gad Mohamed", phone: "01235568898"),
    UserModel(id: 1, name: "Mohamed Hussine", phone: "0123456"),
    UserModel(id: 2, name: "Eslam ahmed", phone: "4567899"),
    UserModel(id: 3, name: "Abo Gad Mohamed", phone: "01235568898"),
    UserModel(id: 1, name: "Mohamed Hussine", phone: "0123456"),
    UserModel(id: 2, name: "Eslam ahmed", phone: "4567899"),
    UserModel(id: 3, name: "Abo Gad Mohamed", phone: "01235568898"),
    UserModel(id: 1, name: "Mohamed Hussine", phone: "0123456"),
    UserModel(id: 2, name: "Eslam ahmed", phone: "4567899"),
    UserModel(id: 3, name: "Abo Gad Mohamed", phone: "01235568898"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Users",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) => buildUserItem(users[index])),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(start: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[400],
                  ),
                ),
            itemCount: users.length));
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                "${user.id}",
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name,
                    style: const TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold)),
                Text(user.phone, style: const TextStyle(color: Colors.grey))
              ],
            ),
          ],
        ),
      );
}
