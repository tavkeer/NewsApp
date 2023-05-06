import 'package:news_app/screens.dart';

class BluetickAndName extends StatelessWidget {
  const BluetickAndName({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          RecomendedFeedController.feedModelData!.articles![index]['source']
                  ['name'] ??
              "",
          style: TextStyle(
            color: Colors.black,
            fontFamily: GoogleFonts.urbanist().fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        const Icon(
          Icons.verified,
          color: Colors.blue,
        ),
      ],
    );
  }
}
