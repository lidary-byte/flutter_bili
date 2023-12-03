import 'package:flutter_bili/base/base_state.dart';
import 'package:flutter_bili/http/dio_client.dart';
import 'package:flutter_bili/http/entity/video_details_entity.dart';
import 'package:flutter_bili/http/net_state.dart';
import 'package:flutter_bili/pages/video_details/bloc/video_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  VideoBloc(String? bvid) : super(const VideoState()) {
    on<VideoDetailsEvent>((event, emit) => _videoDetails(event, emit));
    add(VideoDetailsEvent(bvid: bvid));
  }

  Future _videoDetails(VideoDetailsEvent event, emit) async {
    emit(state.copyWith(netState: NetState.loadingState));
    final videoEntity = await DioClient().get<VideoDetailsEntity>(
        'web-interface/view',
        params: {'bvid': event.bvid});
    if (videoEntity.isSuccess) {
      emit(state.copyWith(
          netState: NetState.successState,
          videoDetailsEntity: videoEntity.data));
    } else {
      emit(state.copyWith(netState: NetState.errorState));
    }
  }
}
