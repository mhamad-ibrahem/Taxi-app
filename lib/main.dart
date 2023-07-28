// import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Global/Core/Theme/Themes.dart';
import 'Global/Core/services/Services.dart';
import 'Local/Core/Constant/routes.dart';
import 'Routes.dart';

Future main() async {
  runApp(const MyApp());
  // BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: routes,
          // home: HomeScreen(),
          initialRoute: AppRoute.start,
          theme: Themes.lightsTheme,
        );
      },
    );
  }
}

// void backgroundFetchHeadlessTask(HeadlessTask task) async {
//   String taskId = task.taskId;
//   bool isTimeout = task.timeout;
//   if (isTimeout) {
//     // This task has exceeded its allowed running-time.
//     // You must stop what you're doing and immediately .finish(taskId)
//     print("[BackgroundFetch] Headless task timed-out: $taskId");
//     BackgroundFetch.finish(taskId);
//     return;
//   }
//   print('[BackgroundFetch] Headless event received.');
//   // Do your work here...
//   BackgroundFetch.finish(taskId);
// }

// bool _enabled = true;
//   int _status = 0;
//   List<DateTime> _events = [];
//   @override
//   void initState() {
//     print("object");

//     initPlatformState();
//     super.initState();
//   }

//  Future<void> initPlatformState() async {
//     // Configure BackgroundFetch.
//     int status = await BackgroundFetch.configure(
//         BackgroundFetchConfig(
//             minimumFetchInterval: 15,
//             stopOnTerminate: false,
//             enableHeadless: true,
//             requiresBatteryNotLow: false,
//             requiresCharging: false,
//             requiresStorageNotLow: false,
//             requiresDeviceIdle: false,
//             requiredNetworkType: NetworkType.NONE), (String taskId) async {
//       // <-- Event handler
//       // This is the fetch-event callback.
//       print("[BackgroundFetch] Event received $taskId");
//       setState(() {
//         _events.insert(0, new DateTime.now());
//       });
//       // IMPORTANT:  You must signal completion of your task or the OS can punish your app
//       // for taking too long in the background.
//       BackgroundFetch.finish(taskId);
//     }, (String taskId) async {
//       // <-- Task timeout handler.
//       // This task has exceeded its allowed running-time.  You must stop what you're doing and immediately .finish(taskId)
//       print("[BackgroundFetch] TASK TIMEOUT taskId: $taskId");
//       BackgroundFetch.finish(taskId);
//     });
//     print('[BackgroundFetch] configure success: $status');
//     setState(() {
//       _status = status;
//     });

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//   }