import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

Widget buildCard(String image,String Name, String num){
  return Card(
    child:Container(
      height: 50,

      color: Colors.white,
      child: Row(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Expanded(
                child:Image.network(image),
                flex:2 ,
              ),
            ),
          ),
          Expanded(
            child:Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: ListTile(
                      title: Text(Name,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      subtitle: Text('\$ $num',style: TextStyle(color: Colors.orange),),
                    ),
                  ),

                ],
              ),
            ),
            flex:8 ,
          ),
        ],
      ),
    ),
    elevation: 8,
    margin: EdgeInsets.all(10),
  );
}


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      body: Stack(

        children:[
          Column(


          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Icon(Icons.menu_rounded,color: Colors.black,size: 40,)),

                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.orange,
                    child: Icon(Icons.shopping_cart,color: Colors.white,),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )


              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 260, 0),
             child:Column(
                 crossAxisAlignment:CrossAxisAlignment.start,
               children: [
                 Text('SUPER' ,style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold)),
                 Text('BEEF BURGER' ,style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold)),

               ],
             )

            ),
            Container(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(29, 0,0 , 0),

                  child: Image(
                    width: 250,
                    height: 250,
                    image: NetworkImage('https://previews.123rf.com/images/bermoha/bermoha1911/bermoha191100405/134323023-gros-hamburger-3d-restauration-rapide-avec-une-ombre-sur-fond-blanc-une-illustration-r%C3%A9aliste-et-jut.jpg'),
                  ),
                ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Card(
                     elevation: 2,
                   child:  Icon(Icons.favorite_border,color: Colors.orange,size: 30,),
                   ),
                   Container(
                     height: 20,
                   ),
                   Card(
                     elevation: 2,
                     child:  Icon(Icons.history,color: Colors.orange,size: 30,),
                   )

                 ],
               )



              ],
            ),
            Row(

            children:[
              Container(
                margin: EdgeInsets.fromLTRB(29, 0,0 , 0),
                child: Text('\$ 42' ,style: TextStyle(fontSize: 40,fontWeight:FontWeight.w200,color: Colors.black54)),),
                Container(width: 40,),
                Stack(
                  alignment: Alignment.centerLeft,
                  children:[
                    Container(
                        margin: EdgeInsets.only(right: 0),
                        width: 350,
                        height: 80,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft:Radius.circular(5)), color: Colors.orange,
                        ),
                      child:Container(
                          padding:EdgeInsets.fromLTRB(230,30, 10, 10),
                        child: Text('Add to card',style: TextStyle(fontSize: 16,color: Colors.white),)
                      )),

                    Container(

                        child:Container(
                          padding:EdgeInsets.fromLTRB(50,20, 30, 10),
                          child :Text('-   2    +',style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight:FontWeight.bold)),
                        ) ,
                      width: 150,
                      height: 60,
                        margin:EdgeInsets.fromLTRB(10,0, 20, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                        )

                    )

                  ]
                )
              ]
            ),
            Container(
              padding:EdgeInsets.fromLTRB(10,0, 400, 0) ,

              child: Text('FEATURED',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)),
            )
            ,Container(
              width: 200,
              height: 100,

              child:GridView(
                scrollDirection: Axis.horizontal, gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 50,
                  mainAxisSpacing: 20),
                children: [
                  Container(

                    child: buildCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThuuWg268NPCwLco8m7ch_d8O8J26G2VHYqQ&usqp=CAU','Sweet Cheese','12')
                  ),
                  Container(

                      child: buildCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeHmyyQMFRtf2ZLigttcZATZDf4-9yUtl10A&usqp=CAU','Sweet Popcorn','6')
                  ),


                ],

              )
            )








          ],
        ),
        ]
      ),

    );
  }
}
