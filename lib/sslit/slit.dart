import 'package:flutter/material.dart';
class slt extends StatefulWidget {
  const slt({Key? key}) : super(key: key);

  @override
  State<slt> createState() => _sltState();
}

class _sltState extends State<slt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Text('الوضوء',

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
        Padding(
        padding: const EdgeInsets.all(4),
         child:Container (
           decoration: BoxDecoration(
               borderRadius:BorderRadius.circular(15),
               color: Colors.white
           ),
             child:Text('الوُضُوْء : أصلة من الوضاءَة و هي النظافة . و الوضُوء في المصطلح الشرعي هو الطهارة المخصوصة التي يرتفع بها الحدث الأصغر و الوضوء مُستحب في نفسه دائماو يجب لأمور كالصلاة و الطواف و مسِّ كتابة المصحف الشريف و أسماء الله عزَّ و جل ، و لأمور أخرى ً',
            textAlign: TextAlign.end ,
            style: TextStyle(
              color: Colors.teal.shade400,
              fontSize: 20,
            )
            ),
          )
          ),
          Padding(
              padding: const EdgeInsets.all(4),
              child:Container (
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    color: Colors.white
                ),
                child:Text('شروط الماء المستخدم في الوضوء\nيشترط في الماء الذي يتوضى به أمور هي :\n ـ طهارة الماء ، حيث لا يصح الوضوء بالماء المتنجس بشيء من النجاسات . \n  ـ إطلاق الماء ، أي كونه ماءً خالصاً يصحُ أن يُطلق عليه " ماء " فلا يجوز التوضوء بالماء الذي أُضيف اليه شيء آخر بحيث أخرجه من إطلاقه ، كما لو أضيف اليه كمية من السكر أو الملح أو شيء آخر بحيث عُدَّ ماءً مضافاً . \n    ـ إباحة الماء ، أي يجب أن يكون الماء الذي يتوضوء به مباحاً غير مغصوب .',
                    textAlign: TextAlign.end ,
                    style: TextStyle(
                      color: Colors.teal.shade400,
                      fontSize: 20,
                    )
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.all(4),
              child:Container (
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    color: Colors.white
                ),
                child:Text('شروط أعضاء الوضوء ، و مكان الوضوء \nو هناك شروط أخرى تخصُّ المتوضيء و المكان الذي يتوضأ فيه ، و هي : \n ـ أن تكون أعضاء الوضوء و هي الوجه و اليدان و موضع المسح من الرأس و الرجلين طاهرة . \n  ـ أن تكون مواضع المسح ناشفة حين المسح . \n   ـ أن يكون المكان الذي يتوضىء فيه مباحاً غير مغصوب .',
                    textAlign: TextAlign.end ,
                    style: TextStyle(
                      color: Colors.teal.shade400,
                      fontSize: 20,
                    )
                ),
              )
          ),
         sliet('image/t6t.jpg', ' تغسل وجهك من منبت الشّعر أعلى الجبهة الى الذّقن طُولاً ، و ما دارت عليه الابهام و الاِصبع الوسطى عرضاً ، فاذا فتحت كفّك على سعتها و وضعتها على وجهك فكل ما استوعبته كفّك.'),
          sliet('image/rt7.jpg', 'تغسل يديك من المرفق الى أطراف الاصابع مبتدئاً باليد اليمنى ثمّ اليسرى غاسلاً من أعلى المرفق و نازلاً الى أطراف أصابعك منتهياً بأصابعك .'),
          sliet('image/dd98.jpg', 'تمسح مقدّم رأسك و يرجّح أن يكون المسح بباطن كفّك اليمنى و بالبلل المتبقى فيها من غسل يديك ، و أن تبدأ المسح من الاَعلى الى الأسفل ،  .'),
          sliet('image/ff44.jpg', 'تمسح بالبلل المتبقى بكفيك على رجليك ( قدميك ) ما بين أطراف الاَصابع و مفصل الساق ، و يرجّح ان تمسح رجلك اليمنى بنداوة كفّك اليمنى و رجلك اليُسرى بنداوة كفّك اليسرى ، و لا يجوز المسح بماء جديد .')
        ],
        ),
       ),
      ),
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
