import 'package:news_app/screens.dart';

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context) {
    RecomendedFeedController feedController =
        Get.put(RecomendedFeedController());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Obx(
        () => (feedController.loading.value)
            ? const ShimmerEffect()
            : News(
                height: height,
                width: width,
              ),
      ),
    );
  }
}
