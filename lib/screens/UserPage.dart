import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserPage extends StatelessWidget {
var data=[
  {'title': 'Full Name', 'subtitle' : 'Minhaj'},
  {'title': 'Email', 'subtitle' : 'minhajsohail7@gmail.com'},
  {'title': 'Phone', 'subtitle' : '+92317-0112101'},
  {'title': 'Address', 'subtitle' : 'Landhi # 06 Area 4C karachi'},
  {'title': 'Gender', 'subtitle' : 'Male'},
  {'title': 'Date of Birth', 'subtitle' : 'August 25,2000'}

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Ecom App UI',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          backgroundColor: HexColor('#F2F3F4'),
          centerTitle: true,
          actions: [
            Icon(Icons.alarm , color: Colors.black, textDirection: TextDirection.rtl),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                  margin: const EdgeInsets.fromLTRB(0, -20,0,0),
                  child:Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnyF4T_FASWcTrtTSfJoK-MNLAVa5rNsBZyA&usqp=CAU',
                    width: 130,height: 220),
                  ),
                    Column(
                      children: [
                        Text('Minhaj',style: TextStyle(fontWeight: FontWeight.bold,fontSize:23 )),
                        Text('minhajsohail7@gmail.com'),
                        SizedBox(height: 20),
                        Text('logout',style: TextStyle(color: Colors.deepPurple)),
                      ],
                    )
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, -30,0,0),              
              child: 
              Text('Account Information',style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,
              ))),
              for (var item in data)
              Container(
                margin: const EdgeInsets.fromLTRB(0, -14,0,0),                              
                child: (
                  ListTile(
                    title: Text(item['title'],style:TextStyle(fontSize: 15)),
                    subtitle: Text(item['subtitle'],style:TextStyle(fontSize: 11)),
                  )
                ),
              )
            ]
          ),
        ),
      
    );
  }
}