import 'package:news_app/screens.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.controller,
  });

  final NavController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        currentIndex: controller.pageIndex.value,
        onTap: (value) {
          controller.index.value = value;
          controller.pageIndex.value = value;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
