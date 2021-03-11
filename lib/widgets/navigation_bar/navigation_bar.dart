import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBar extends StatelessWidget {
  // const NavigationBar({Key key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: SafeArea(
        child: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Row(
              children: [
                TextButton(onPressed: (){}, child:
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset('assets/icons/yuhkitakahashi_color.svg'),
                  ),
                ),

                FaIcon(FontAwesomeIcons.solidCaretRight),
                Text('Content'),
                Spacer(),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidBars),
                  onPressed: (){
                    print('Menu button pressed.');
                  },
                ),
              ],
            );
          }
        )
      )
    );
  }
}