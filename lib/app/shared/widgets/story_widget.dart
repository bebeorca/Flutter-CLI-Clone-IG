import 'package:clone_ig/app/data/model/story_model.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final StoryModel story;
  final void Function()? onTap;
  const Story({super.key, required this.story, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: story.stories!.isNotEmpty ? onTap : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 72,
              height: 72,
              child: Stack(
                children: [
                  Container(
                    padding: story.stories!.isNotEmpty
                        ? const EdgeInsets.all(3)
                        : const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 60, 244, 54),
                      shape: BoxShape.circle,
                    ),
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/${story.image}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  story.isLogin
                      ? Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Container(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            Text(
              story.username,
              style:
                  TextStyle(color: story.isLogin ? Colors.grey : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
