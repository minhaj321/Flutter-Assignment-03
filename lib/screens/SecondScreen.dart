import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  var data=[
{'name' : 'Iphone 12' , 'img' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxeBt1LGBMpP_zw_il4wf6kSVYlIE3xN40AA&usqp=CAU'},
{'name' : 'Note 20 Ultra' , 'img' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbOx_v95rZLai4qJ1ovwiRP1EtUi17E8Zeiw&usqp=CAU'},
{'name' : 'Macbook Air' , 'img' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdxq7znHLAxBwHpvkJc6VHilSoEdB9H-D4Gw&usqp=CAU'},
{'name' : 'Macbook Pro' , 'img' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLvyizefGjHwUdU3zUO5sTa8OXFPIlNAalAg&usqp=CAU'},
{'name' : 'Gaming PC' , 'img' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKRFbQSp9JsQfkBavV15g84h35UoenXF5s4g&usqp=CAU'}
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
        body: Column(
          children:[
            SizedBox(height: 30),
           for(var item in data)(
             Container(
                 margin: const EdgeInsets.all(10.0),
                 padding: const EdgeInsets.all(3.0),
                 decoration: BoxDecoration(
                 border: Border.all(color: Colors.black12 , width: 1)
                     ),
              child: 
              ListTile(
                leading:Image.network(item['img'],width: 110, height: 220),
                title: Text(item['name'],style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 13)),


                subtitle:Column(
                  children:[
                    
                    Row(
                      children:[
                    Icon(Icons.star),
                   Text('5.0 (23 Reviews)')
                      ]
                    ),
                    Row(
                      children: [
                        Text('20 Pieces'),
                        SizedBox(width: 20),
                        Text('90',style: TextStyle(fontSize:20,color: Colors.purple ))
                      ],
                    ),
                      Row(
                        children: [
                          Text('Quantity: 1')
                        ],
                      )
                  ]
                 ),



          ),
             )
           )
          ],
        ),
    );
  }
}