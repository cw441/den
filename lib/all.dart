
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class maim extends StatefulWidget {
   maim({Key? key}) : super(key: key);

  @override
  State<maim> createState() => _maimState();
}
class _maimState extends State<maim> {

  final player = AudioPlayer();
  bool isplayer =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('تسميع احرف اللغة العربية',

            style: TextStyle(
              color: Colors.teal.shade400,
              fontSize: 25,
            ),
          ),
          centerTitle:true ,
          elevation: 0,
          backgroundColor:Colors.teal.shade100,
        ),
      body:Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              image:DecorationImage(
                image:AssetImage(  'image/cvz.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child:  SingleChildScrollView(

              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height*0.2,
                ),
                SingleChildScrollView(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  contr('ا','A.mp3'),
                  contr('ب','B.mp3'),
                  contr('ت','C.mp3'),
                  contr('ث','D.mp3'),
                  contr('ج','E.mp3')

              ],
                )
                  ,),
                SingleChildScrollView(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contr('ح','F.mp3'),
                      contr('خ','G.mp3'),
                      contr('د','H.mp3'),
                      contr('ذ','I.mp3'),
                      contr('ر','J.mp3')

                    ],
                  )
                  ,),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contr('ز','K.mp3'),
                      contr('س','L.mp3'),
                      contr('ش','M.mp3'),
                      contr('ص','N.mp3'),
                      contr('ض','O.mp3')
                    ],
                  )
                  ,),
                SingleChildScrollView(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contr('ط','P.mp3'),
                      contr('ظ','Q.mp3'),
                      contr('ع','R.mp3'),
                      contr('غ','S.mp3'),
                      contr('ف','T.mp3')

                    ],
                  )
                  ,),
                SingleChildScrollView(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contr('ق','U.mp3'),
                      contr('ك','Kaf.mp3'),
                      contr('ل','Lam.mp3'),
                      contr('م','Mem.mp3'),
                      contr('ن','Noon.mp3')

                    ],
                  )
                  ,),
                SingleChildScrollView(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contr('هـ','Ha.mp3'),
                      contr('و','Wow.mp3'),
                      contr('ي','Iae.mp3'),


                    ],
                  )
                  ,)
              ],
            ),
          )
      )
    );
  }
contr (texte ,ssm){
    return TextButton(
            onPressed:(){


                  player.play(AssetSource('$ssm'));

            },
            child: Container (
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(15),
                ),
                width: MediaQuery.of(context).size.width*0.15,
                height: MediaQuery.of(context).size.width*0.15,
                child:Center(
                  child:  Text('$texte',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                    color: Colors.teal.shade400,
                    fontSize: 35,
                  ),
                ),
                )
            )
    );
}
}
