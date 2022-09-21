import 'package:blood_365/domain/tips/tips.dart';
import 'package:flutter/material.dart';
// import 'package:story_view/story_view.dart';
import 'package:story/story.dart';

class HealthTipsView extends StatelessWidget {
  final List<TipsData> tipsList;

  const HealthTipsView({Key? key, required this.tipsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tipsList.length,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FullScreenTipsView(tipsList)));
                  },
                  child: Container(
                    width: 80,
                    //width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                        //borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(tipsList[index].imageurl),
                            fit: BoxFit.cover)),
                    // child: Text(
                    //   tipsList[index].text,
                    //   style: const TextStyle(color: Colors.white),
                    // ),
                  ),
                )));
  }
}

class FullScreenTipsView extends StatelessWidget {
  final List<TipsData> tipsList;

  const FullScreenTipsView(this.tipsList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, _pageIndex, storyIndex) {
          final user = tipsList[storyIndex].text;
          final story = tipsList[storyIndex].imageurl;
          return Stack(
            children: [
              Positioned.fill(
                child: Container(color: Colors.black),
              ),
              Positioned.fill(
                child: Image.network(
                  story,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 44, left: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(story),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          user,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 50,
                      ),
                      child: Text(
                        user,
                        style: TextStyle(color: Colors.pink, fontSize: 35),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 32),
              child: IconButton(
                padding: EdgeInsets.zero,
                color: Colors.white,
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
        pageLength: 1,
        storyLength: (int pageIndex) {
          return tipsList.length;
        },
        onPageLimitReached: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
