import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacklearn/services/counter_services.dart';
import 'package:stacklearn/view/counter.dart';
import 'package:stacklearn/view/homeview.dart';

@StackedApp(routes: [
  MaterialRoute(page: counter,
  initial:true
  ),
  MaterialRoute(page: homescreen)

],
    dependencies: [
      Singleton(classType: NavigationService),
      LazySingleton(classType: Counterservices)
    ])
class App{

}