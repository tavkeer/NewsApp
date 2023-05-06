import 'package:news_app/screens.dart';

class TopNewsListItem extends StatelessWidget {
  final int index;
  const TopNewsListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 70,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                RecomendedFeedController.feedModelData!.articles![index]
                        ['source']['name'] ??
                    "",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.verified,
                color: Colors.blue,
              ),
            ],
          ),
          Text(
            RecomendedFeedController.feedModelData!.articles![index]['title'] ??
                "",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
