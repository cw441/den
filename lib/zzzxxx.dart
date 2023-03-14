import 'package:den/all.dart';
import 'package:den/sslit/allslit.dart';
import 'package:den/sslit/slit.dart';
import 'package:den/tsbeh.dart';
import 'package:flutter/material.dart';

import 'hdeth.dart';
import 'krin.dart';
import 'mahmoed.dart';
class dsvx extends StatefulWidget {
  const dsvx({Key? key}) : super(key: key);

  @override
  State<dsvx> createState() => _dsvxState();
}

class _dsvxState extends State<dsvx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text('الرئيسية',

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

        child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(children: [
           TextButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>krin()
      )
      );
      },
        child: wew('image/jhh.jpg','القران الكريم') ),
             TextButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(
              builder: (context) =>sltth()
        )
        );
      },
        child: wew('image/gg.jpg','احاديث الرسول'))
          ],
          ),
          Row(children: [
            TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>tesbeh()
              )
              );
            },
              child: wew('image/zza.jpg','مسبحة الأذكار')
            ),
            TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>maim()
              )
              );
            },
              child: wew('image/bnm.jpg','احرف اللغة العربية'))
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>alislt()
                )
                );
              },
                child:wew('image/bbn.jpg','تعلم الصلاة'))
          ],
          ),
          SizedBox(height: 10,)
      ],
      ),
      ),
    );
  }
  wew( image ,  tex){
return  Padding(
    padding: const EdgeInsets.all(1),
    child:Container(
      height: 155,
    width: MediaQuery.of(context).size.width*0.43,
    decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(15),
    color: Colors.white,
    ),
      child: Column(
        children: [
          Container(
            height:90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(15),
              image:DecorationImage(
                image:AssetImage(  '$image',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

         Expanded (child:Text('$tex',
            textAlign: TextAlign.end ,
            style: TextStyle(
              color: Colors.teal.shade400,
              fontSize: 25,
            ),
          )
         ),
      ],
      ),
    )
);
  }
}
