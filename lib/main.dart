import 'screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    runApis();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.urbanist().fontFamily,
      ),
      home: const NavigationPage(),
    );
  }

  runApis() async {
    RecomendedFeedController feedController =
        Get.put(RecomendedFeedController());
    await RecomendedFeedController().fetchData();
    feedController.loading.value = false;
  }
}
