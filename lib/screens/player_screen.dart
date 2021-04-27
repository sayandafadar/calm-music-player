import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayerScreen extends StatefulWidget {
  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(horizontal: 28.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 320.0,
              ),
              Text(
                '27:28',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                ),
              ),
              SizedBox(
                height: 200.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Relax into Deep Sleep',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Relax into Deep Sleep',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 45.0,
                  ),
                ],
              ),
              ProgressBar(
                thumbColor: Colors.white,
                thumbRadius: 0.0,
                timeLabelTextStyle: TextStyle(
                  fontSize: 0.0,
                  color: Colors.white10,
                ),
                baseBarColor: Colors.white10,
                progress: Duration(milliseconds: 1000),
                buffered: Duration(milliseconds: 2000),
                total: Duration(milliseconds: 5000),
                onSeek: (duration) {
                  print('User selected a new time: $duration');
                },
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
