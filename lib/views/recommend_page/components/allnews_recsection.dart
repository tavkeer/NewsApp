import 'package:news_app/screens.dart';

class AllNewsRocommendationSection extends StatelessWidget {
  const AllNewsRocommendationSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: RecomendedFeedController.feedModelData!.articles!.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.to(
              () => DetailsPage(
                data: RecomendedFeedController.feedModelData!.articles![index],
                index: index,
              ),
            ),
            child: Container(
              height: 100,
              width: width,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  NewsImage(index: index, width: width),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BluetickAndName(index: index),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: width * 0.4,
                        height: 50,
                        child: NewsList(index: index),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
