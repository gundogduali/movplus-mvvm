import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../data/model/video/video_model.dart';
import 'movie_video_card.dart';

class MovieVideos extends StatefulWidget {
  const MovieVideos({Key? key, required this.videos}) : super(key: key);
  final List<VideoModel> videos;

  @override
  State<MovieVideos> createState() => _MovieVideosState();
}

class _MovieVideosState extends State<MovieVideos> {
  double sizeHeight() {
    return (widget.videos.length / 2).round() * 90.h;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeHeight(),
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.w,
                childAspectRatio: 0.95,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.videos.length,
              itemBuilder: (context, index) {
                var imageUrl = YoutubePlayer.getThumbnail(
                  videoId: widget.videos[index].key,
                  quality: ThumbnailQuality.high,
                );

                return MovieVideoCard(
                    imageUrl: imageUrl,
                    title: widget.videos[index].name ?? '',
                    onTap: () async {
                      var _url = Uri.parse(
                          'https://www.youtube.com/watch?v=${widget.videos[index].key}');
                      if (!await launchUrl(_url)) throw 'Could not launch url';
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
