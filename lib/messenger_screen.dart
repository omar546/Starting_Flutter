import 'package:flutter/material.dart';
import 'package:messenger_rep/users_screen.dart';

class MessengerScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        leadingWidth: 0.0,
        title: Row(
          children: [
            IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.grey[300]
                ,
                child: Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                  size: 16.0,

                ),
              ),
            ),
            // CircleAvatar(
            //   radius: 20.0,
            //
            //   backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/71936776?v=4'),
            // ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),

          ],
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[300]
              ,
              child: Icon(
                Icons.camera_alt,
                color: Colors.black,
                size: 16.0,

              ),
            ),
          ),
          IconButton(
            onPressed: (){
              Navigator. push(context, MaterialPageRoute(builder: (BuildContext context){ return UsersScreen(); }));

            },
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[300]
              ,
              child: Icon(
                Icons.edit,
                color: Colors.black,
                size: 16.0,

              ),
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0,),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(5.0,),
                child: Row(
                  children: [
                    Icon(
                        Icons.search
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => BuildStoryItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index) => BuildChatItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
  //Build Item
  //arron fun "one obj return + no other operations"
  Widget BuildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/71936776?v=4'),
            ),
            CircleAvatar(
              radius: 9.1,
              backgroundColor: Colors.white,

            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 2.0,
                end: 2.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,

              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          'Omar Mekkawy Mahmoud',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
  Widget BuildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/71936776?v=4'),
          ),
          CircleAvatar(
            radius: 9.1,
            backgroundColor: Colors.white,

          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 2.0,
              end: 2.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,

            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Omar Mekkawy',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello! my name is Ano. too if Udk. Have a nice day master user',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0
                  ),
                  child: Container(
                    width: 4.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: Colors.grey
                      ,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                    '09:00 pm'
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
    
