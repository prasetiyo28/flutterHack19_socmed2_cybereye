import 'package:flutter/material.dart';



class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
      ),
      drawer: Drawer(),
      appBar: AppBar(),
      body: 
       
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.supervised_user_circle,size: 150,),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: Column(

                      children: <Widget>[
                        Text("Bayu Adi Prasetiyo",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                        
                        Text("bayu28.bap@gmail.com"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          Icon(Icons.monetization_on,color: Colors.amber, size: 30,),
                          Text("100" , style: TextStyle(
                            fontSize: 30
                          ),)
                        ],)
    
                      ],
                    ),
                  ),
                )
              ],
            ),
            
          ],
        ),
        
      ),
    );
  }
}