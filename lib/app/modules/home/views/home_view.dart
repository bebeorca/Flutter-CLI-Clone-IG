import 'package:clone_ig/app/data/model/story_model.dart';
import 'package:clone_ig/app/shared/widgets/post_widget.dart';
import 'package:clone_ig/app/shared/widgets/story_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Instagram',
                              style: TextStyle(fontSize: 24),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.message),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.add_box_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 97.75,
                    child: ListView.builder(
                      itemCount: controller.stories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (contex, index) {
                        StoryModel data = controller.stories[index];
                        return Column(
                          children: [
                            Story(
                              story: data,
                              onTap: () {
                                controller.makeStory(data.stories);
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Column(
                    children: List.generate(
                      controller.models.length,
                      (index) => Column(
                        children: [
                          Post(
                            model: controller.models[index],
                            onDoubleTap: () {
                              controller.like(index);
                            },
                            onTap: () {
                              controller.like(index);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedIconTheme: const IconThemeData(color: Colors.black),
            selectedIconTheme: const IconThemeData(color: Colors.black),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: ''),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.ondemand_video_sharp), label: ''),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: ''),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SizedBox(
                      width: 26,
                      height: 26,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/exported_1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red,
                      ),
                      width: 6,
                      height: 6,
                    ),
                  ],
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
