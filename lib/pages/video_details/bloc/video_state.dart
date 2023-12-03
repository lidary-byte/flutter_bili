part of 'video_bloc.dart';

class VideoState extends BaseState {
  final VideoDetailsEntity? videoDetailsEntity;
  const VideoState({super.netState, this.videoDetailsEntity});

  VideoState copyWith(
      {NetState? netState, VideoDetailsEntity? videoDetailsEntity}) {
    return VideoState(
        netState: netState ?? this.netState,
        videoDetailsEntity: videoDetailsEntity ?? this.videoDetailsEntity);
  }

  @override
  List<Object?> get props => super.props + [videoDetailsEntity];
}
