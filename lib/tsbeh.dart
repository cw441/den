import 'package:flutter/material.dart';

class tesbeh extends StatefulWidget {
  const tesbeh({Key? key}) : super(key: key);

  @override
  State<tesbeh> createState() => _tesbehState();
}
class _tesbehState extends State<tesbeh> {
  int num = 0;

  @override
void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مسبحة الاذكار ',

          style: TextStyle(
            color: Colors.teal.shade400,
            fontSize: 25,
          ),
        ),
        centerTitle:true ,
        elevation: 0,
        backgroundColor:Colors.teal.shade100,
      ),
                   body:SafeArea(
                     child: Container(
                     height: MediaQuery.of(context).size.height*1,
                            width: MediaQuery.of(context).size.width*1,
                            decoration: BoxDecoration(
                           image:DecorationImage(
                       image:AssetImage(  'image/cvz.jpg',
                 ),
                           fit: BoxFit.fill,
                 ),
                 ),
                         child: Row(
                           mainAxisSize: MainAxisSize.max,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                             children: [ Column(
                           mainAxisSize: MainAxisSize.max,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [






                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              children: [

                                Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width*0.7,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              topLeft:   Radius.circular(10),
                                              bottomLeft: Radius.circular(10)

                                          ),

                                        ),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child:Row(
                                                children: [
                                                  SizedBox(width:MediaQuery.of(context).size.width*0.35 ,),
                                                  Text((() {
                                                    if(num < 30){
                                                      return"سبحان الله";
                                                    }else if(num<60){
                                                      return"الحمدلله";
                                                    }
                                                    else if(num<90){
                                                      return"استغفرالله";
                                                    }else{
                                                      return"لا اله الا الله";
                                                    }
                                                  })(),
                                                    textAlign: TextAlign.end ,
                                                    style: TextStyle(
                                                      color: Colors.teal.shade400,
                                                      fontSize: 25,
                                                    ),
                                                  )])
                                        )
                                    ),

                               Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width*0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.teal.shade400,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft:   Radius.circular(10),

                                    ),

                                    ),
                                    child: Center(child:  Text('$num',
                                      textAlign: TextAlign.end ,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    )
                                    )

                                ),


                              ],
                            )
                          ],
                        ),
                          SizedBox(height: 25,),
                        Row(
                         mainAxisSize: MainAxisSize.max,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                        Stack(
                         children: [

                          TextButton(onPressed: (){
                           setState(() {
                              if(num>99){
                               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>tesbeh()), (route) => false);}
                             else{
                               num++;
                             }
                           }
                           );
                         }
                             , child:Container(
                                 height: 50,
                                 width: MediaQuery.of(context).size.width*0.7,
                                 decoration: BoxDecoration(
                                   color: Colors.teal.shade400,
                                   borderRadius: BorderRadius.only(
                                       topRight: Radius.circular(10),
                                       bottomLeft: Radius.circular(10)

                                   ),

                                 ),
                                 child: Align(
                                     alignment: Alignment.topRight,
                                     child:Row(
                                         children: [
                                          SizedBox(width:MediaQuery.of(context).size.width*0.35 ,),
                                           Text('تسبيح',
                                   textAlign: TextAlign.end ,
                                   style: TextStyle(
                                     color: Colors.teal.shade50,
                                     fontSize: 25,
                                   ),
                                 )])
                                 )
                             )
                         ),
                                  TextButton(
                                  onPressed: (){
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder:
                                            (context)=>tesbeh()), (route) => false);

                                  }
                                  , child:Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*0.2,
                                  decoration: BoxDecoration(
                                    color: Colors.amber.shade300,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10)
                                    ),

                                  ),
                                  child: Center(child:  Text('اعادة',
                                    textAlign: TextAlign.end ,
                                    style: TextStyle(
                                      color: Colors.teal.shade400,
                                      fontSize: 25,
                                    ),
                                  )
                                  )
                              )
                              ),


        ],
         )
        ],
         ),
        ],
      ),
          ]
      )
      ),
      ),
    );
  }

 }
