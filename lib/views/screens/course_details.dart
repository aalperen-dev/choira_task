import 'package:cached_video_player/cached_video_player.dart';
import 'package:choira_task/views/contansts.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_accordion.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/tutor_info_card.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // navigato to homepage
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cast_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: ContainedTabBarView(
        tabs: const [
          Text('lessons'),
          Text('about the course'),
        ],
        tabBarProperties: TabBarProperties(
          background: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            // colors for background?
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            radius: BorderRadius.circular(11.0),
            color: choiraBlueTwo,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: choiraWhite,
        ),
        views: const [
          LessonsView(),
          AboutTheCourseView(),
        ],
        onChange: (_) {},
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

class AboutTheCourseView extends StatelessWidget {
  const AboutTheCourseView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Under Consruction!',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}

class LessonsView extends StatefulWidget {
  const LessonsView({
    super.key,
  });

  @override
  State<LessonsView> createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {
  late CachedVideoPlayerController controller;
  @override
  void initState() {
    controller = CachedVideoPlayerController.asset(
      'assets/videos/learn.mp4',
      videoPlayerOptions: VideoPlayerOptions(),
    );
    controller.initialize().then((value) {
      controller.pause();

      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          children: [
            // video
            controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: CachedVideoPlayer(controller))
                : const CircularProgressIndicator(),
            // tutor info
            const TutorInfoWidget(),
            // accordion for lesson
            const AccordionForLessonInfo(),
          ],
        ),
      ),
    );
  }
}
