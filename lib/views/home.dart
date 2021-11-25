import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:tictactoe/providers/game_provider.dart';
import 'package:tictactoe/widgets/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final GameProvider state = context.watch<GameProvider>();

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              bottom: size.height * 0.07, top: size.height * 0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Widgets.textField(
                          text: 'X', shapeSize: 30, color: Colors.blueAccent),
                      Widgets.textField(
                          text: 'O', shapeSize: 30, color: Colors.amberAccent)
                    ],
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/game'),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.lightBlue[800],
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 5),
                      child: Text(
                        'local game',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Montserrat',
                          fontSize: state.getAdaptiveTextSize(context, 16),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}