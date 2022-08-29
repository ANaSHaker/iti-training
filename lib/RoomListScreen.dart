import 'package:flutter/material.dart';

import 'RoomModel.dart';

class RoomListScreen extends StatefulWidget {
  const RoomListScreen({Key? key}) : super(key: key);

  @override
  State<RoomListScreen> createState() => _ThirdTaskScreenState();
}

class _ThirdTaskScreenState extends State<RoomListScreen> {

  var room = BankRoomModel();
  bool isNext = false;
  int firstIndex = 0;
  void _updateSelected(int index) => setState(() => firstIndex = index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Room List"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  Column(
          children: [
            Expanded(
              child: ListView.builder(

                itemCount: 3,
                itemBuilder: (context,firstIndex)=> Container(
                  height: 230,
                  margin:EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    child: InkWell(
                      onTap: () => print("tap"),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                            child: Image.network(
                                '${room.rooms[firstIndex].image}',
                                // width: 300,
                                height: 150,
                                fit:BoxFit.fill
                            ),
                          ),
                          ListTile(
                            title: Text(
                              '${room.rooms[firstIndex].title}',
                            ),
                            subtitle: Text(
                              '${room.rooms[firstIndex].subtitle}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ),
            ),
            InkWell(
              child: Card(
                elevation: 5,
                color: Colors.purple,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Container(
                  height: 40,
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              onTap: (){
                setState((){
                });
              },
            )
          ],
        )
      )
    );
  }
}
/*

 */