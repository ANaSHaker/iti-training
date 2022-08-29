import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Pizza Details"),
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            child: ListTile(
              leading: Container(
                height: 100,
                child: Icon(
                  Icons.phone,
                  color:Colors.purple,
                ),
              ),
              title: Text(
                  'Phone',
                  style: TextStyle(
                      color: Colors.purple
                  )
              ),
              subtitle:Text(
                "01140279111",
                style: TextStyle(
                    fontSize:20,
                    color: Colors.purple
                ),
              ),
              trailing: IconTheme(
                data: new IconThemeData(
                  color:  Colors.purple,
                ),
                child: Icon(
                    Icons.shopping_cart
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            child: ListTile(
              leading: Container(
                height: 100,
                child: Icon(
                  Icons.alternate_email,
                  color:  Colors.purple,
                ),
              ),
              title: Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.purple
                  )
              ),
              subtitle:  Text(
                "gustblack36@gmail.com",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.purple
                ),
              ),
              trailing: IconTheme(
                data: new IconThemeData(
                  color:  Colors.purple,
                ),
                child: Icon(
                    Icons.send
                ),
              ),

            ),
          ),

        ],
      ),
    );
  }
}
