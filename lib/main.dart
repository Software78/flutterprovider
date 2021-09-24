import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/color_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ColorProvider())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return Consumer<ColorProvider>(
      builder: (_, notifier, __) => MaterialApp(
        theme: ThemeData(primarySwatch: colorProvider.maincolor),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              colorProvider.altercolor();
            },
            child: Icon(Icons.ice_skating),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 500,
                    height: 500,
                    color: colorProvider.maincolor,
                    child: FlutterLogo()),
                // ElevatedButton(
                //     onPressed: () {

                //     },
                //     child: Text('Change Color'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
