
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/constants/theme_data.dart';

void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const shaqadef());
}

class shaqadef extends StatelessWidget {
  const shaqadef({super.key});

  @override
  Widget build(BuildContext context) {
     initializeHWFSize(context);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       // create: (context) => AddProductCubit(),
    //     ),
    //   ],
    //   child: 
      
    return   MaterialApp(
        locale: const Locale('ar'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        theme: AppThemeData.lightTheme(),
        themeMode: ThemeMode.light,
        routes: routes,
        initialRoute: Routes.splashScreen,
         builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
      // ),
    );
  }
}