import 'package:news_app/controllers/recomend_feedcontroller.dart';
import 'package:news_app/screens.dart';
import 'package:news_app/widgets/shimmer_effect.dart';

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context) {
    RecomendedFeedController feedController =
        Get.put(RecomendedFeedController());
    return Scaffold(
      body: Obx(
        () => (feedController.loading.value)
            ? const ShimmerEffect()
            : Container(),
      ),
    );
  }
}
