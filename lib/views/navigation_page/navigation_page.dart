import 'package:news_app/screens.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //initializing the controller for getx
    NavController controller = Get.put(NavController());

    //list of pages fo navigation across navigation bar
    final List<Widget> pages = [
      const RecommendPage(),
      const DiscoverPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const CustomIconButton(icon: Icons.menu),
        ),
        actions: const [
          CustomIconButton(icon: Icons.search),
          SizedBox(width: 10),
          CustomIconButton(icon: Icons.notifications_none),
          SizedBox(width: 10),
        ],
      ),
      bottomNavigationBar: BottomBar(
        controller: controller,
      ),

      //reactive pages for seemless navigation
      body: Obx(
        () => pages[controller.pageIndex.value],
      ),
    );
  }
}
