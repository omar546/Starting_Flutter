import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });
}

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),
    UserModel(
      id: 2,
      name: 'Osama Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+2087856136',
    ),
    UserModel(
      id: 4,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),
    UserModel(
      id: 5,
      name: 'Osama Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 6,
      name: 'Ahmed Ali',
      phone: '+2087856136',
    ),
    UserModel(
      id: 7,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),
    UserModel(
      id: 8,
      name: 'Osama Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 9,
      name: 'Ahmed Ali',
      phone: '+2087856136',
    ),
    UserModel(
      id: 10,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),
    UserModel(
      id: 11,
      name: 'Osama Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 12,
      name: 'Ahmed Ali',
      phone: '+2087856136',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.grey[600],
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor:  Colors.grey[300],
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );

// 1. build item
// 2. build list
// 3. add item to list
}
