import 'package:news_app/screens.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          RecomendedFeedController.feedModelData!.articles![index]['title'],
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
