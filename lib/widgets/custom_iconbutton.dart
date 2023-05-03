import 'package:news_app/screens.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? ontap;
  const CustomIconButton({
    Key? key,
    required this.icon,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade200,
      radius: 25,
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.black54,
          ),
          onPressed: ontap,
          iconSize: 25,
        ),
      ),
    );
  }
}
