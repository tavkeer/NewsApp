import 'package:news_app/screens.dart';

class NewsImage extends StatelessWidget {
  final double width;

  final int index;
  const NewsImage({
    Key? key,
    required this.width,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        width: width * 0.33,
        height: 100,
        child: Image.network(
          RecomendedFeedController.feedModelData!.articles![index]
                  ['urlToImage'] ??
              imageNotFound,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
