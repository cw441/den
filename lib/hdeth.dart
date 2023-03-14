import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class sltth extends StatefulWidget {
  const sltth({Key? key}) : super(key: key);

  @override
  State<sltth> createState() => _sltthState();
}

class _sltthState extends State<sltth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('الحديث النبوي',

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
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/cvz.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CarouselSlider(
                        items: [
                          sliet('حديث في رضا الوالدين', 'وقال النبي محمد ﷺ : (من أرضى والديه فقد أرضى الله، ومن أسخط والديه فقد أسخط الله)'),
                          sliet('حديث عمل معروف', 'وقال النبي محمد ﷺ : (كل معروفً صدقة) '),
                          sliet('حديث في اداب الطعام', 'وقال النبي محمد ﷺ : (سَمِّ اللَّه، وكُلْ بِيَمِينكَ، وكُلْ مِمَّا يَلِيكَ)'),
                          sliet('حديث اخلاق المسلم', 'وقال النبي محمد ﷺ : (‌المسلم ‌من ‌سلم المسلمون من لسانه ويده)'),
                          sliet('طلب العلم', 'وقال النبي محمد ﷺ : (طلب العلم فريضة على كل مسلم ومسلمة)'),
                          sliet('حديث النهي عن النميمة', 'وقال النبي محمد ﷺ : ( لا يدخل الجنة نمام)'),
                          sliet('حديث التعاون', 'وقال النبي محمد ﷺ : (الله في عون العبد ما كان العبد في عون أخيه)'),
                          sliet('حديث في الامانة', 'وقال النبي محمد ﷺ : (أَدِّ الْأَمَانَةَ إِلَى مَنْ ائْتَمَنَكَ ، وَلا تَخُنْ مَنْ خَانَكَ )'),
                          sliet('حديث الصحة والتداوي', 'وقال النبي محمد ﷺ : (تداووا يا عباد الله ، فإن الله لم يضع داء إلا وضع له شفاء ، إلا داء واحدا ، الهرم َ)'),
                          sliet('حديث تحريم الغش', 'وقال النبي محمد ﷺ : ( من غشنا فليس منا َ)'),
                          sliet('حديث الشفقة والرحمة', 'وقال النبي محمد ﷺ : (من لا يرحم الناس لا يرحمه الله)'),
                          sliet('حديث وحدة المسلم وتعاونهم', 'وقال النبي محمد ﷺ : (المؤمن للمؤمن كالبنيان يشد بعضه بعضًا)'),
                          sliet('حديث محاسن الاخلاق', 'وقال النبي محمد ﷺ : (اكمل المؤمنين إيمانًا أحسنهم خلقًا)'),
                          sliet('حديث تعلم القرأن وتعليمة', 'وقال النبي محمد ﷺ : (خيركم من تعلم القرآن وعلمه)'),
                          sliet('حديث النهي عن الكذب', 'وقال النبي محمد ﷺ : (إياكم والكذب، فإن الكذب يهدي إلى الفجور، والفجور يهدي إلى النار، وإن الرجل ليكذب، حتى يكتب عند الله كذاباَ)'),

                        ],
                        options: CarouselOptions(
                          height:  MediaQuery.of(context).size.height*0.4,
                          enlargeCenterPage: true,
                         // autoPlay: true,
                          aspectRatio: 16 / 9,
                        //  autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                       //   autoPlayAnimationDuration: Duration(seconds:200),
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          viewportFraction: 0.9,
                        ),
                      ),

                    ]
                )
            )
    );
  }
  sliet(titl, tex){
    return  Padding(
        padding: const EdgeInsets.all(4),
        child:  Container(
          height: MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(15),
              color: Colors.white
          ),

            child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child:Text('$titl',
            textAlign: TextAlign.end ,
            style: TextStyle(
              color: Colors.teal.shade400,
              fontSize: 20,
            ),
          ) ,
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
        ),
    );
  }
}