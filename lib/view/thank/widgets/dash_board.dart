import 'package:flutter/material.dart';

import '../../../config/screen_size.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom:ScreenSize.height(context)*0.2+15,
      right: 20+8,
      left: 20+8,
      child: Row(
        children: [
          for(int i=0;i<15;i++)...[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height:ScreenSize.height(context)*0.002 ,
                  width:ScreenSize.width(context)*0.016 ,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
            )
          ]
        ],
      ),
    );
  }
}
