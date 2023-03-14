import 'package:flutter/material.dart';
class slte extends StatefulWidget {
  String name;
   slte({Key? key ,required this.name}) : super(key: key);

  @override
  State<slte> createState() => _slteState(  name);
}

class _slteState extends State<slte> {
  String name;
  _slteState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(name,

        style: TextStyle(
          color: Colors.teal.shade400,
          fontSize: 25,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.teal.shade100,
    ),

        body: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 1,
            width: MediaQuery
                .of(context)
                .size
                .width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/cvz.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: SingleChildScrollView(
                child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Text(
                                'قال تعالى\n (ان الصلاة كانت على المؤمنين كتاباً موقوتاً)',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.teal.shade400,
                                  fontSize: 20,
                                )
                            ),
                          )
                      ),
                      sliet('image/aa21.jpg', 'اتجه الى القبلة وانوي الصلاة'),
                      sliet('image/1126.jpg', 'النية'),
                      sliet('image/aa21.jpg', 'اقرة سورة الفاتحة مع سورة من القران'),
                      sliet('image/v45.jpg', 'اركع و قول: سبحان ربي العضيم ثلاث مرات'),
                      sliet('image/aa21.jpg', 'ارفع من الركوع قائلاً: سمع الله لمن حمده ربنا لك الحمدً'),
                      sliet('image/2148.jpg', 'السجود اقول : سبحان ربي الاعلى ثلاث مرات'),
                      sliet('image/2148.jpg', 'السجود ثانياً و اقول : سبحان ربي الاعلى ثلاث مرات'),
                      sliet('image/3331.jpg', 'تقول بحول الله و قوة اقوم و اركع و اسجد '),
                      sliet('image/aa21.jpg', 'ثم تقوم تقره سورة الفاتحة مع سورة من القران'),
                      sliet('image/v45.jpg', 'اركع و قول: سبحان ربي العضيم ثلاث مرات'),
                      sliet('image/aa21.jpg', 'ارفع من الركوع قائلاً: سمع الله لمن حمده ربنا لك الحمدً'),
                      sliet('image/2148.jpg', 'السجود اقول : سبحان ربي الاعلى ثلاث مرات'),
                      sliet('image/2148.jpg', 'السجود ثانياً و اقول : سبحان ربي الاعلى ثلاث مرات'),
                      sliet('image/3331.jpg', 'التشهد : اشهد ان لا اله الا الله وحده لا شريك له واشهد ان محمد عبده ورسوله اللهم صلي على محمد وال محمد '),
                      sliet('image/aa21.jpg', 'ثم تقوم تقره:سبحان الله والحمدلله ولا اله الا الله والله اكبر ثلاث مرات او واحد '),
                      sliet('image/v45.jpg', 'اركع و قول: سبحان ربي العضيم ثلاث مرات'),
                      sliet('image/aa21.jpg', 'ارفع من الركوع قائلاً: سمع الله لمن حمده ربنا لك الحمدً'),
                      sliet('image/2148.jpg', 'السجود اقول : سبحان ربي الاعلى ثلاث مرات'),
                      sliet('image/2148.jpg', 'السجود ثانياً و اقول : سبحان ربي الاعلى ثلاث مرات'),

                      sliet('image/3331.jpg', 'التشهد و التسليم: اشهد ان لا اله الا الله وحده لا شريك له واشهد ان محمد عبده ورسوله اللهم صلي على محمد وال محمد السلام عليك ايها النبي وحمة الله وبركاته السلام علينا و على عباد الله الصالحين '),

                    ]
                )
            )
        )
    );
  }
    sliet(image, tex){
      return  Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(15),
                color: Colors.white
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    image:DecorationImage(
                      image:AssetImage(  '$image',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded (
                  child:Padding(
                      padding: const EdgeInsets.all(2),
                      child:Text('$tex',
                        textAlign: TextAlign.end ,
                        style: TextStyle(
                          color: Colors.teal.shade400,
                          fontSize: 20,
                        ),
                      )
                  ),
                )
              ],
            ),
          )
      );
    }
}
