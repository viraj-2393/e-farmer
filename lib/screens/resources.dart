import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Resources extends StatelessWidget{
  static const route = '/resources';

  Widget _youtube_vids(BuildContext context,String videoId){
    return YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: videoId, //Add videoID.
        flags: YoutubePlayerFlags(
          hideControls: false,
          controlsVisibleAtStart: true,
          autoPlay: false,
          mute: false,
        ),
      ),
      showVideoProgressIndicator: true,
      progressIndicatorColor: Theme.of(context).primaryColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffedf9f5),
        leading: const Icon(Icons.menu,color: Color(0xff26C487),),
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 10,),
          Icon(Icons.notifications,color: Color(0xffFEBA48),),
          SizedBox(width: 10,)
        ],
      ),
      body:Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
             _youtube_vids(context, 'NCp93xbSwWM'),
            SizedBox(height: 10,),
            _youtube_vids(context, 'Fw1SQSek5rk'),
            SizedBox(height: 10,),
            _youtube_vids(context, 'wougJaN_Ha0'),
            SizedBox(height: 10,),
            _youtube_vids(context, 'SP4AAPbnK94'),
            SizedBox(height: 10,),
            _youtube_vids(context, 'ZFsz-cFXzM8'),
            SizedBox(height: 10,),

          ],
        ),
      )
    );
  }
}