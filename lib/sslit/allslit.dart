import 'package:den/sslit/slit.dart';
import 'package:den/sslit/slite.dart';
import 'package:den/sslit/slits.dart';
import 'package:den/sslit/slity.dart';
import 'package:flutter/material.dart';
class alislt extends StatefulWidget {
  const alislt({Key? key}) : super(key: key);

  @override
  State<alislt> createState() => _alisltState();
}

class _alisltState extends State<alislt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Text('تعلم الصلاة ',

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

        child: SingleChildScrollView (
          child: Column(
              children: [
                TextButton(onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>slt()
                )
                );},
        child: leste('الوضوء')),
                TextButton(onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>slts()
                      )
                  );},
                    child: leste('صلاة الصبح')),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>slty(
                          name: 'صلاة الضهر',


                      )
                  )
                  );
                },
                    child: leste('صلاة الضهر')),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>slty(
                        name: 'صلاة العصر',


                      )
                  )
                  );
                },
                    child: leste('صلاة العصر')),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>slte(
                        name: 'صلاة المغرب',
                      )
                  )
                  );
                },
                    child: leste('صلاة المغرب')),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>slty(
                        name: 'صلاة الليل',


                      )
                  )
                  );
                },
                    child: leste('صلاة الليل'))
              ]

          ),
        ),
      ),
    );
  }
  leste(swws){
    return Padding(
      padding: const EdgeInsets.all(1),
      child:Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          color: Colors.white,),
        width: MediaQuery.of(context).size.width*1,
        height: 100,
        child:Center(child:  Text('$swws',
          textAlign: TextAlign.end ,
          style: TextStyle(
            color: Colors.teal.shade400,
            fontSize: 25,
          ),
        )
        ),
      ),
    );
  }
}