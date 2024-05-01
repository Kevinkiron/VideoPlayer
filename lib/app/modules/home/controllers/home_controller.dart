import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeController extends GetxController {
  final String videoUrl = "https://www.youtube.com/watch?v=CMF3qeu7fHY";

  late YoutubePlayerController videoController;
  @override
  void onInit() {
    videoPlayer();
    super.onInit();
  }

  videoPlayer() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    videoController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
  }
}
