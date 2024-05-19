import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../controllers/game_controller.dart';
import '../fonts/my_fonts.dart';

class MyScoreBoard extends StatelessWidget {
  const MyScoreBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = GameController.instance;

    return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Player O', style: MyFonts.myFontWhite),
                const SizedBox(height: 8),
                Obx(() => Text(controller.oScore.toString(), style: MyFonts.myFontWhite)),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Player X', style: MyFonts.myFontWhite),
                const SizedBox(height: 8),
                Obx(() => Text(controller.xScore.toString(), style: MyFonts.myFontWhite)),
              ],
            )
          ],
        )
    );
  }
}