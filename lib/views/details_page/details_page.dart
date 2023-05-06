import 'package:news_app/screens.dart';

class DetailsPage extends StatefulWidget {
  final Map<String, dynamic> data;
  final int index;
  const DetailsPage({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: height, width: width),
          Container(
            height: height * 0.5,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.data['urlToImage'],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.6,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width,
                      child: BluetickAndName(index: widget.index),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      widget.data['content'],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
