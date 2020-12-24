//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/subscreens/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List homeScreenWidgets = [
    Stories(),
    Posts(
      caption: ' ',
      likes: '390',
      senderUrl:
          'https://upload.wikimedia.org/wikipedia/commons/b/b4/Survivor%2BMicronesia%2BFinale%2BReunion%2BShow%2BsX1sL4qHizkx.jpg',
      postedBy: 'Parvati Shallows',
      postedLocation: 'No Where',
      imageUrl:
          'https://soapdirt.com/wp-content/uploads/2020/04/Survivor-Parvati-Shallow-John-Fincher-3845.jpg',
    ),
    Posts(
      caption: 'Who cares when you have one?',
      likes: '1,089',
      senderUrl:
          'https://tvline.com/wp-content/uploads/2020/02/survivor-winners-at-war-boston-rob.jpg?w=620',
      postedBy: 'Boston Rob',
      postedLocation: ' ',
      imageUrl:
          'https://content.forums.previously.tv/monthly_2020_01/BRob.JPG.9f6ae85fa94b92d5e3a1714c8101a9c9.JPG',
    ),
    Posts(
      caption: 'A great experience',
      likes: '10,432',
      senderUrl: 'https://i.redd.it/vyfowutfcl211.jpg',
      postedBy: 'Kelley Wentworth',
      postedLocation: 'Survivor',
      imageUrl: 'https://assets-jpcust.jwpsrv.com/thumbnails/nmevr8yh-720.jpg',
    ),
    Posts(
      caption: 'A great experience',
      likes: '43',
      senderUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRolipvIRGgguYvIa4NorGsoHY28pMC0iC5ZA&usqp=CAU',
      postedBy: 'Russel',
      postedLocation: 'Samoa',
      imageUrl:
          'https://i.pinimg.com/originals/e3/88/b6/e388b655d5b5a3bfdd4e38442ad18b2d.jpg',
    ),
    Posts(
      caption: 'A great experience',
      likes: '102',
      senderUrl: 'https://i.ytimg.com/vi/Hm3vOw47z2g/maxresdefault.jpg',
      postedBy: 'Aubry',
      postedLocation: 'Kaoh Raong',
      imageUrl: 'https://i.ytimg.com/vi/Hm3vOw47z2g/maxresdefault.jpg',
    ),
    Posts(
      caption: 'A great experience',
      likes: '423,123',
      senderUrl:
          'https://wwwimage-secure.cbsstatic.com/base/files/seo/96da89e430001882_chris-underwood.jpg',
      postedBy: 'Chris',
      postedLocation: 'Edge of Extinction',
      imageUrl: 'https://i.ytimg.com/vi/fpf-gHekZ7A/maxresdefault.jpg',
    ),
    Posts(
      caption: 'A great experience',
      likes: '154',
      senderUrl:
          'https://cdn.realitytvworld.com/images/heads/gen/embedded/21984-s.jpg',
      postedBy: 'Sarah Lacina',
      postedLocation: 'Fiji',
      imageUrl: 'https://i.ytimg.com/vi/66KKqOixj9A/hqdefault.jpg',
    ),
    Posts(
      caption: 'A great experience',
      likes: '132,522',
      senderUrl:
          'https://image.nj.com/home/njo-media/width960/img/njcom_photos/photo/2016/05/18/-a4c8963a6f506133.JPG',
      postedBy: 'Michelle',
      postedLocation: 'Survivor',
      imageUrl:
          'https://tvline.com/wp-content/uploads/2020/05/survivor-michele-fitzgerald-season-40-winners-at-war.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text(
          'Instagram Clone',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 25.0),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
            },
            child: Icon(
              Icons.near_me,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: homeScreenWidgets.length,
            itemBuilder: (context, index) {
              return homeScreenWidgets[index];
            }),
      ),
    );
  }
}

class Posts extends StatelessWidget {
  final String imageUrl;
  final String postedBy;
  final String postedLocation;
  final String senderUrl;
  final String likes;
  final String caption;
  Posts({
    this.imageUrl,
    this.postedBy,
    this.postedLocation,
    this.senderUrl,
    this.likes,
    this.caption,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black12),
                bottom: BorderSide(color: Colors.black12),
              ),
            ),
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 20.0,
                      backgroundImage: NetworkImage(senderUrl),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          postedBy,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          postedLocation,
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  size: 28.0,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //color: Colors.black54,
                height: 350.0,
                child: Image.network(imageUrl),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.favorite_outline,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      Icons.mode_comment_outlined,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      Icons.send_rounded,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0, left: 10.0),
                child: Text(
                  '$likes likes',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 10.0),
                child: Row(
                  children: [
                    Text(
                      postedBy,
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 15.0),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      '$caption ',
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        children: [
          story(
              storySender: 'Your Story',
              senderUrl:
                  'https://cdn.statically.io/img/www.itl.cat/pngfile/big/117-1175255_related-post-watch-dogs-2-android.jpg',
              readOrUnread: Colors.black26),
          story(
              storySender: 'Alexa',
              readOrUnread: Colors.red,
              senderUrl:
                  'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iI3O5RODNvmQ/v1/1000x-1.jpg'),
          story(
              storySender: 'Chimp',
              readOrUnread: Colors.black26,
              senderUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwLYs61rtw90IJ8_QIgfgyLjsjEu4e5vyx5A&usqp=CAU'),
          story(
              storySender: 'Jeff',
              readOrUnread: Colors.black26,
              senderUrl:
                  'https://pbs.twimg.com/profile_images/669103856106668033/UF3cgUk4_400x400.jpg'),
          story(
              storySender: 'Tim',
              readOrUnread: Colors.red,
              senderUrl:
                  'https://www.incimages.com/uploaded_files/image/1920x1080/getty_846092436_200013841503697090_390255.jpg')
        ],
      ),
    );
  }
}

Widget story({String storySender, String senderUrl, Color readOrUnread}) {
  return Container(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              maxRadius: 30.0,
              child: CircleAvatar(
                maxRadius: 26.0,
                backgroundImage: NetworkImage(senderUrl),
              ),
              backgroundColor: readOrUnread,
            )
          ],
        ),
        Text(storySender),
      ],
    ),
  );
}
