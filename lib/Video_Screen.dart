import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class VideoScreen extends StatefulWidget {
  final String id;
  final String title;
  VideoScreen({this.id , this.title});
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(initialVideoId: widget.id,
    flags: YoutubePlayerFlags(mute: false, autoPlay: true
    ),
    );
    
  }
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(title: Text('Keema Youtube'),),
      body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            YoutubePlayer(
            topActions: <Widget>[
            const SizedBox(width: 8.0),
            Expanded(
                  child: Text(
                    _controller.metadata.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
            ),
          
          ],
        controller: _controller,
        showVideoProgressIndicator: true ,

        onReady: (){
          print('Player is Ready.');
        },
        ),
        SizedBox(height: 10),
   
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(widget.title, style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.w700),)),
        
                ],
              ),
      )
   
    );
  }
}