sealed class VideoEvent {}

class VideoDetailsEvent extends VideoEvent {
  final String? bvid;

  VideoDetailsEvent({this.bvid});
}
