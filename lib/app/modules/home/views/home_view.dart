import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:machine_test/app/utils/strings.dart';
import 'package:machine_test/app/utils/styles.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            elevation: 4,
            leading: const Icon(Icons.video_collection_outlined),
            title: Style().reg(
              text: Constants.home,
            ),
            centerTitle: true,
          ),
          body: Center(
              child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              const Gap(10),
              Style().reg(
                text: Constants.animeEdition,
                size: 20,
                fontWeight: FontWeight.w600,
              ),
              const Gap(10),
              player,
              const Gap(20),
              Style().reg(
                text: 'Description',
                size: 15,
                fontWeight: FontWeight.w600,
              ),
              const Gap(10),
              Style().reg(
                text: Constants.descriptionDetail,
                size: 15,
                fontWeight: FontWeight.w200,
              ),
            ],
          )),
        );
      },
      player: YoutubePlayer(
        progressIndicatorColor: Colors.blue,
        controller: controller.videoController,
        showVideoProgressIndicator: true,
        onReady: () {},
      ),
    );
  }
}
