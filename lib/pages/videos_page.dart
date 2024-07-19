import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _MyVideoPageState();
}

class _MyVideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;
  // late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      looping: true,
    );

    // _initializeVideoPlayerFuture = _controller.initialize();
    // _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: FutureBuilder(
      //     future: _initializeVideoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return AspectRatio(
      //           aspectRatio: _controller.value.aspectRatio,
      //           child: VideoPlayer(_controller),
      //         );
      //       } else {
      //         return const Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       }
      //     }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         _controller.play();
      //       }
      //     });
      //   },
      //   child:
      //       Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      // ),

      body: Center(
        child: Chewie(controller: _chewieController),
      ),
    );
  }
}
