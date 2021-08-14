
import 'package:flutter/material.dart';
//Created by Philippe Chevelev
//Attribution - Pas d’Utilisation Commerciale
// CC BY-NC
//non commercial use.

//La fonction main est executée dès le début du programme.
//The main function is executed from the start of the program.
void main() => runApp(MaterialApp(
  home: UserPanel(),));


class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  _UserPanelState createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int likes = 0;
  bool isLiked = false;
  var likeIcon = Icons.favorite_border;

  void like(){
    setState(() {
      if(isLiked){
        likes = likes - 1;
        likeIcon = Icons.favorite_border;
        isLiked = false;

      } else {
        likes ++;
        likeIcon = Icons.favorite;
        isLiked = true;
      }
    });

        }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:Text("User",style: TextStyle(
          backgroundColor: Colors.orange,
        ),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(

              children: [
               Padding(padding: EdgeInsets.only(top: 20)),
                Text("Philou the Traveller",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,

                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                CircleAvatar(radius:50,
                  backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
                 Padding(padding: EdgeInsets.only(left: 10)),
                 TextButton.icon(label:Text("Send a message"),onPressed: (){print("Sending a message");}, icon: Icon(Icons.message_outlined)),
                Padding(padding: EdgeInsets.only(bottom: 15)),

                Row(
                  children: [
                    Icon(Icons.email,size: 25,),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text("email: Test@gmail.com"),

                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(onPressed: (){like(); print(likes); }, icon: Icon(likeIcon), label: Text("${(likes).toString()}"),),

                  ],
                ),
              ],

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(likeIcon),onPressed: (){like();},
        backgroundColor: Colors.orange,
      ),
    );
  }
}
