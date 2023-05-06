import 'package:news_app/screens.dart';

class Header extends StatelessWidget {
  final double height;
  final double width;
  const Header({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TopNewsList(index: 0, width: width, height: height),
          TopNewsList(index: 1, width: width, height: height),
          TopNewsList(index: 2, width: width, height: height),
          TopNewsList(index: 3, width: width, height: height),
        ],
      ),
    );
  }
}

class TopNewsList extends StatelessWidget {
  final double height;
  final double width;
  final int index;
  const TopNewsList({
    Key? key,
    required this.height,
    required this.width,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TopNewsListItemBackground(
          index: index,
          width: width,
          height: height,
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: TopNewsListItem(
            index: index,
          ),
        ),
      ],
    );
  }
}
