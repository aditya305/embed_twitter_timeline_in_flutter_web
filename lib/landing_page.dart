import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'twitter',
      (int uid) {
        IFrameElement _iFrame = IFrameElement()..src = "web/twitter.html";
        _iFrame.style.border = "none";
        return _iFrame;
      },
    );
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "Twitter Timeline \nin \nFlutter Web",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: HtmlElementView(
                  viewType: "twitter",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
