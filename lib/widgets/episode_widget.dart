import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../models/webtoon_episode_model.dart';

class Episode extends StatelessWidget {
  final WebtoonEpisodeModel episode;
  final String webtoon_id;

  const Episode({
    Key? key,
    required this.episode,
    required this.webtoon_id,
  }) : super(key: key);

  void onButtonTap() async {
    print("tapped");
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoon_id&no=${episode.id})");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green.shade400,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: const Offset(5, 5),
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            children: [
              Text(
                episode.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
