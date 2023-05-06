import '../../../screens.dart';

class TopNewsListItemBackground extends StatelessWidget {
  final int index;
  final double height;
  final double width;
  const TopNewsListItemBackground({
    Key? key,
    required this.index,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        () => DetailsPage(
          data: RecomendedFeedController.feedModelData!.articles![index],
          index: index,
        ),
      ),
      child: ShaderMask(
        shaderCallback: (bounds) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.shade100,
              Colors.black,
            ],
          ).createShader(bounds);
        },
        child: Container(
          height: 200,
          width: width - 40,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: NetworkImage(
                RecomendedFeedController.feedModelData!.articles![index]
                        ['urlToImage'] ??
                    imageNotFound,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
