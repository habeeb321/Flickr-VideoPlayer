import 'package:flick_video_player/flick_video_player.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:video_player/video_player.dart';

class FlickVideoController extends GetxController {
  late FlickManager flickManager;

  @override
  void onInit() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            "https://static.videezy.com/system/resources/previews/000/044/249/original/01__2822_29.mp4"),
      ),
      autoPlay: true,
    );
    super.onInit();
  }

  @override
  void onClose() {
    flickManager.dispose();
    super.onClose();
  }
}
