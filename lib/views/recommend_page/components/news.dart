import 'package:news_app/screens.dart';
import 'package:intl/intl.dart';

class News extends StatelessWidget {
  final double height;
  final double width;
  const News({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                'Breaking News',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: GoogleFonts.urbanist().fontFamily,
                ),
              ),
              const SizedBox(height: 10),

              //header consists of top news
              Header(height: height, width: width),
              const SizedBox(height: 10),

              Text(
                'Recommendations',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: GoogleFonts.urbanist().fontFamily,
                ),
              ),
              const SizedBox(height: 10),

              //list of all top news
              AllNewsRocommendationSection(width: width)
            ],
          ),
        ),
      ),
    );
  }

  String formatDate(String dateString) {
    DateTime date = DateTime.parse(dateString);
    String formattedDate = DateFormat('dd MMM yyyy').format(date);
    return formattedDate;
  }
}
