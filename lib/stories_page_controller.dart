import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_list_view/story_data.dart';
import 'package:simple_list_view/story_full_page_view.dart';

class StoriesPageController extends StatefulWidget {
  const StoriesPageController({super.key});

  @override
  State<StoriesPageController> createState() => _StoriesPageControllerState();
}

class _StoriesPageControllerState extends State<StoriesPageController> {
  final stories = [
    StoryFullPageView(
      storyData: StoryData(
          username: "G_brand",
          description: "transfroming ideas into impactful",
          color: Colors.blue),
    ),
    StoryFullPageView(
      storyData: StoryData(
          username: "G_brand",
          description: "transfroming ideas into impactful",
          color: const Color.fromARGB(255, 33, 243, 93)),
    ),
    StoryFullPageView(
      storyData: StoryData(
          username: "G_brand",
          description: "transfroming ideas into impactful",
          color: const Color.fromARGB(255, 243, 33, 131)),
    )
  ];
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    Timer.periodic(Duration(seconds: 5), (r) => _autoPlayStories());
  }

  int currentIndex = 0;

  get width => null;
  void _autoPlayStories() {
    if (currentIndex < stories.length) {
      pageController.animateToPage(currentIndex + 1,
          duration: Duration(seconds: 5), curve: Curves.easeOutBack);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (int? i) {
              setState(() {
                currentIndex = i ?? 0;
              });
            },
            controller: pageController,
            itemCount: stories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => stories[index],
          ),
          SizedBox(
              height: 60,
              child: Row(
                children: List.generate(
                    stories.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width *
                                .9 /
                                stories.length,
                            decoration: BoxDecoration(
                                color: index <= currentIndex
                                    ? Colors.amberAccent
                                    : Colors.blueAccent,
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.only(left: 8),
                            height: 10,
                          ),
                        )),
              ))
        ],
      ),
    );
  }
}
