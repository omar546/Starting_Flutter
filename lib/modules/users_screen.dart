import 'package:flutter/material.dart';

import 'counter/counter_screen.dart';


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
      name: 'Mansour Abdullah',
      phone: '+201115342559',
    ),
    UserModel(
      id: 5,
      name: 'Mansour Osama',
      phone: '+201117842559',
    ),
    UserModel(
      id: 6,
      name: 'Ali Ahmed',
      phone: '+2087856136',
    ),
    UserModel(
      id: 7,
      name: 'Abdullah Osama',
      phone: '+201115342559',
    ),
    UserModel(
      id: 8,
      name: 'Osama Abdullah',
      phone: '+201117842559',
    ),
    UserModel(
      id: 9,
      name: 'Mansour Ali',
      phone: '+2087856136',
    ),
    UserModel(
      id: 10,
      name: 'Abdullah Ahmed',
      phone: '+201115342559',
    ),
    UserModel(
      id: 11,
      name: 'Omar Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 12,
      name: 'Ahmed ibrahim',
      phone: '+2087856136',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        leadingWidth: 0.0,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.grey[300]
                ,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 16.0,

                ),
              ),
            ),
            Text(
              'Contacts',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
              ),
            ),
          ],
        ),
      actions: [IconButton(
        onPressed: (){
          Navigator. push(context, MaterialPageRoute(builder: (BuildContext context){ return CounterScreen(); }));
    }
        ,
        icon: CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.grey[300]
          ,
          child: Icon(
            Icons.plus_one_rounded,
            color: Colors.black,
            size: 16.0,

          ),
        ),
      ),],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        // separatorBuilder: (context, index) => Padding(
        //   padding: const EdgeInsetsDirectional.only(
        //     start: 20.0,
        //   ),
        //   // child: Container(
        //   //   width: double.infinity,
        //   //   height: 1.0,
        //   //   color: Colors.grey[300],
        //   // ),
        // ),
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
          radius: 30.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 20.0,
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
                fontSize: 16.0,
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
