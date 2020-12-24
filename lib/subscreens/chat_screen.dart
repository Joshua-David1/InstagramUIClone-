import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final List chatListBody = [
    searchField(),
    Padding(
      padding: EdgeInsets.only(left: 15.0, bottom: 15, right: 10.0, top: 10.0),
      child: Text(
        'Messages',
        style: TextStyle(
            fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20.0),
      ),
    ),
    chatList(
        chatSenderImage:
            'https://cdn.realitytvworld.com/images/heads/gen/embedded/21984-s.jpg',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Sarah'),
    chatList(
        chatSenderImage:
            'https://image.nj.com/home/njo-media/width960/img/njcom_photos/photo/2016/05/18/-a4c8963a6f506133.JPG',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Michelle'),
    chatList(
        chatSenderImage:
            'https://upload.wikimedia.org/wikipedia/commons/b/b4/Survivor%2BMicronesia%2BFinale%2BReunion%2BShow%2BsX1sL4qHizkx.jpg',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Parvati'),
    chatList(
        chatSenderImage:
            'https://tvline.com/wp-content/uploads/2020/02/survivor-winners-at-war-boston-rob.jpg?w=620',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Rob'),
    chatList(
        chatSenderImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRolipvIRGgguYvIa4NorGsoHY28pMC0iC5ZA&usqp=CAU',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Russel'),
    chatList(
        chatSenderImage: 'https://i.redd.it/vyfowutfcl211.jpg',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Kelley'),
    chatList(
        chatSenderImage: 'https://i.ytimg.com/vi/Hm3vOw47z2g/maxresdefault.jpg',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Aubry'),
    chatList(
        chatSenderImage:
            'https://wwwimage-secure.cbsstatic.com/base/files/seo/96da89e430001882_chris-underwood.jpg',
        chatSenderMessage: 'sup?',
        chatSenderName: 'Chris'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        title: Text(
          'joshua.david_',
          style: TextStyle(
              color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w700),
        ),
        actions: [
          Icon(
            Icons.videocam_outlined,
            color: Colors.black,
            size: 35.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.open_in_new,
            color: Colors.black,
            size: 30.0,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: chatListBody.length,
          itemBuilder: (context, index) {
            return chatListBody[index];
          }),
    );
  }
}

Widget chatList(
    {String chatSenderImage, String chatSenderName, String chatSenderMessage}) {
  return Container(
    padding: EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 28.0,
              backgroundImage: NetworkImage(chatSenderImage),
            ),
            SizedBox(
              width: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatSenderName,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                ),
                Text(
                  chatSenderMessage,
                  style: TextStyle(color: Colors.black54, fontSize: 15.0),
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.camera_alt,
          color: Colors.black26,
        ),
      ],
    ),
  );
}

Widget searchField() {
  return Container(
    padding: EdgeInsets.all(15.0),
    height: 70.0,
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5.0),
        prefixIcon: Icon(
          Icons.search_rounded,
          color: Colors.brown,
        ),
        filled: true,
        fillColor: Colors.black12,
        hintText: 'Search',
        hintStyle: TextStyle(fontSize: 20.0),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black54)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );
}
