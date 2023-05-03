import 'package:news_app/screens.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(0.3),
            highlightColor: Colors.white.withOpacity(0.6),
            period: const Duration(seconds: 2),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.9),
                borderRadius: BorderRadius.circular(17),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const RepeatedWidget(),
        const SizedBox(height: 20),
        const RepeatedWidget(),
        const SizedBox(height: 20),
        const RepeatedWidget(),
        const SizedBox(height: 20),
        const RepeatedWidget(),
        const SizedBox(height: 20),
        const RepeatedWidget(),
      ],
    );
  }
}

class RepeatedWidget extends StatelessWidget {
  const RepeatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(0.3),
          highlightColor: Colors.white.withOpacity(0.6),
          period: const Duration(seconds: 2),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.9),
              borderRadius: BorderRadius.circular(17),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.6),
                period: const Duration(seconds: 2),
                child: Container(
                  height: 16,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.6),
                period: const Duration(seconds: 2),
                child: Container(
                  height: 16,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.6),
                period: const Duration(seconds: 2),
                child: Container(
                  height: 16,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
