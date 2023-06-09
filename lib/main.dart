import 'package:app_avaliacao_edusoft/common/context/global_context.dart';
import 'package:app_avaliacao_edusoft/common/routes/routes.dart';
import 'package:app_avaliacao_edusoft/common/theme/theme.dart';
import 'package:app_avaliacao_edusoft/modules/IoC/dependency_containers.dart' as kiwi;
import 'package:app_avaliacao_edusoft/src/censo/view/screens/censo_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Hive.initFlutter();
  // Hive.registerAdapter(NomeCensoHiveModelAdapter());

  await kiwi.setUp();

  // kiwi.container.resolve

  runApp(const EdusoftApp());
}

class EdusoftApp extends StatelessWidget {
  const EdusoftApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edusoft App',
      routes: routes,
      navigatorKey: kiwi.container.resolve<GlobalContextHelper>().key,
      debugShowCheckedModeBanner: false,
      initialRoute: CensoScreen.id,
      theme: appTheme
    );
  }
}
