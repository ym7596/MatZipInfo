import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:matzipinfo/screen/HomeScreen.dart';

//flutter run -d chrome --web-hostname localhost --web-port 5000
//chrome 실행 포트 명령어  네이버 api 5000으로 로컬 등록해둠

//Naver API Client ID
//4f5hjwph9v

//Naver API Client Secret
//6SMwpGIcJovpLkShjyzj9aJPwmK7GsvDKgRIbVlg
void  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(clientId: '4f5hjwph9v',
  onAuthFailed: (ex){
    print("naver map error : $ex :");
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MatZip Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: HomeScreen(),
    );
  }
}
