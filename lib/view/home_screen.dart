import 'package:flick_video_player/flick_video_player.dart';
import 'package:flickr_video_player/controller/flick_video_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends GetView<FlickVideoController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FlickVideoController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flickr Video Player"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.3,
              width: double.infinity,
              child: FlickVideoPlayer(
                flickManager: controller.flickManager,
                flickVideoWithControls: const FlickVideoWithControls(
                    controls: FlickPortraitControls()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
