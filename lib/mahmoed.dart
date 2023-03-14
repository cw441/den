import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class mahmoed extends StatefulWidget {
  String name;
  String sore;
  String musci;
  mahmoed({Key? key,required this.name, required this.sore, required this.musci}) : super(key: key);

  @override
  State<mahmoed> createState() => _mahmoedState(name ,sore,musci);
}

class _mahmoedState extends State<mahmoed> {

  final player = AudioPlayer();
 bool isplayer =false;
 Duration duration=Duration.zero;
  Duration position=Duration.zero;

  String formatTime(int seconds){
    return'${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8,'0');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
player.onPlayerStateChanged.listen((state) {
  setState(() {
    isplayer= state==PlayerState.playing;
  });
});
player.onDurationChanged.listen((newDuration) {
  setState(() {
   duration=newDuration;
  });
});
player.onPositionChanged.listen((newPosition) {
  setState(() {
    position = newPosition;
  });
});
  }
  String name;
  String sore;
  String musci;
  _mahmoedState(this.name,this.sore,this.musci);
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
          centerTitle:true ,
          elevation: 0,
          backgroundColor:Colors.teal.shade100,
        ),
      body: Container(
        height: MediaQuery.of(context).size.height*1,
    width: MediaQuery.of(context).size.width*1,
    decoration: BoxDecoration(
    image:DecorationImage(
    image:AssetImage(  'image/cvz.jpg',
    ),
    fit: BoxFit.fill,
    ),
    ),
         child: SingleChildScrollView(

    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
         padding: const EdgeInsets.all(8),
          child: Container (
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(15),
                color: Colors.white
            ),

            child:Text(sore,
            textAlign: TextAlign.end ,
            style: TextStyle(
              color: Colors.teal.shade400,
              fontSize: 25,
               letterSpacing:0.3
            )
            ),
          )
          ),
          Container(
            child: Slider(
              activeColor: Colors.teal.shade400,

              min: 0,
              max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),
              onChanged: (value){
                final position=Duration(seconds: value.toInt());
                player.seek(position);
                player.resume();
              },
            ),
          ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatTime(position.inSeconds),
                style: TextStyle(
                  color: Colors.teal.shade400,
                  fontSize: 18,
                ),
              ),
              Text(formatTime((duration-position).inSeconds),
                style: TextStyle(
                color: Colors.teal.shade400,
                fontSize: 18,
              ),
              )
          ],
          ),
        ),
        IconButton(onPressed: (){
          if(isplayer){
            setState(() {
              isplayer=false;
            });

             player.stop();
          }else{
            setState(() {
              isplayer=true;

              player.play(AssetSource(musci));
            });


          }
        },
            icon:isplayer? Icon(Icons.pause

            ):Icon(Icons.play_arrow,
          size: 40,
              color: Colors.teal.shade400,
            )
        )

      ],
      ),
          )
      )
    );
  }

}
