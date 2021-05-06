import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ColorPState();
}

class ColorPState extends State<ColorP> {
  Color currentColor = Color(0xfffc00e3);

  void changeColor(Color color) => setState(() => currentColor = color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 400, height: 45),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: currentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Center(
                          child: Text(
                            'Selecione uma cor',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'NotoSans',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        titlePadding: const EdgeInsets.all(10.0),
                        contentPadding: const EdgeInsets.all(0.0),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: currentColor,
                            onColorChanged: changeColor,
                            colorPickerWidth: 350.0,
                            pickerAreaHeightPercent: 0.8,
                            enableAlpha: false,
                            displayThumbColor: true,
                            showLabel: false,
                            paletteType: PaletteType.hsv,
                            pickerAreaBorderRadius: const BorderRadius.only(
                              topLeft: const Radius.circular(0.0),
                              topRight: const Radius.circular(0.0),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Selecionar cor'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
