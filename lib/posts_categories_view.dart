import 'package:flutter/material.dart';


class PostsCategoriesView extends StatefulWidget {
  const PostsCategoriesView({Key? key}) : super(key: key);

  @override
  State<PostsCategoriesView> createState() => _PostsCategoriesViewState();
}

class _PostsCategoriesViewState extends State<PostsCategoriesView> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              //alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: 300,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/banner.jpg"),alignment: Alignment.topCenter,fit: BoxFit.fill),
                          gradient: LinearGradient(colors: [
                            Color(0xfff38507),
                            Color(0xfff38507),
                          ], begin: Alignment.topLeft, end: Alignment.centerRight)),

                    ),
                    SizedBox(
                      height:50,
                    ),
                    Text(
                      "Mahmoud Shaker",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                      ),
                    ),

                    SizedBox(
                      height:20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30),
                          child: FlatButton(
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Container(
                        //height: SizeConfig.screenHeight / 2,
                        decoration:
                        BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                              color: Color(0xfff38507),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: Offset(2, 3))
                        ]),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.phone,
                                color:Color(0xfff38507),
                              ),
                              title: Text('Mobile'),
                              subtitle:Text(
                                "01140279111",
                                style: TextStyle(
                                  fontSize:20,
                                ),
                              ),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.alternate_email,
                                color: Color(0xfff38507),
                              ),
                              title: Text('Email'),
                              subtitle:  Text(
                                "Gustblack36@gmail.com",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.lock,
                                color: Color(0xfff38507),
                              ),
                              title: Text('Password'),
                              subtitle:  Text(
                                "*********",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Container(
                          height: 50,
                          width: 240,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Log Out"),
                              Icon(Icons.logout,color: Colors.red,)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top:180,
                  left: 110,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        color: Color(0xff8d7f08),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                              Border.all(color: Colors.white, width: 6)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child:Image.network("https://avatars.hsoubcdn.com/3e9456e0f2cb33cc801aae1c7b063ac9?s=256")

                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 5,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black54,
                          child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 25,
                              ),
                              onPressed: () {
                              }),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
