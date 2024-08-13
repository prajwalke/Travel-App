// ignore_for_file: prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  void initState() {
    super.initState();
  }

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'kZzhpEdCrWQ',
     flags: const YoutubePlayerFlags(
      mute: false,
      autoPlay: true,
      disableDragSeek: false,
      loop: false,
      isLive: false,
      forceHD: false,
      enableCaption: true,
      
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: YoutubePlayer(
          controller: _controller,
          bottomActions: [
            CurrentPosition(),
            ProgressBar(isExpanded: true),
          ],
        ),
      ),
    );
  }
}
