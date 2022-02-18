import 'package:flutter/material.dart';
import 'package:flutter_basic_navigator/pages/second_page.dart';
import 'package:flutter_basic_navigator/pages/second_text_input_page.dart';
import 'package:flutter_basic_navigator/widgets/button_widget.dart';

import '../main.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ButtonWidget(
                    pushOrPop: 'push',
                    widget: SecondPage(),
                    description: 'SecondPageへ遷移する'),
                ButtonWidget(
                    pushOrPop: 'push-showDialog',
                    widget: SecondPage(),
                    description: 'SecondPageへ遷移する\npop時にDialogを表示させる'),
                ButtonWidget(
                    pushOrPop: 'push-shoDialog-text',
                    widget: SecondTextInputPage(),
                    description: 'SecondTextInputPageへ遷移する\npop時に入力した文字を表示させる'),
                ButtonWidget(
                    pushOrPop: 'pushAndRemoveUntil',
                    widget: SplashPage(),
                    description: 'ログアウトボタンとして使う\n条件に一致するまでスタックから画面を\n除いていく\nその後画面をpushする'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

