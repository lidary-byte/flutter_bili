import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/video_details/bloc/video_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoDetails extends StatelessWidget {
  final String? bvid;

  const VideoDetails({super.key, this.bvid});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocProvider<VideoBloc>(
        create: (_) => VideoBloc(bvid),
        child: BlocBuilder<VideoBloc, VideoState>(
            builder: (context, state) => Row(
                  children: [
                    Flexible(
                      child: Container(
                        child: Text('视频区域'),
                      ),
                      flex: 4,
                    )
                  ],
                )),
      ),
    ));
  }
}
