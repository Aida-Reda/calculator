import 'package:flutter/Material.dart';
class MyButton extends StatelessWidget {

  final color ;
  final textColor;
  final buttonText ;
  final buttonTapped ;

  MyButton({
    super.key,
    this.color,
    this.buttonText ,
    this.textColor,
    this.buttonTapped
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius:BorderRadius.circular(20),
          child: Container(
              color: color,
            child: Center(
              child: Text(buttonText,
                style: TextStyle(
                  color:textColor,
                  fontSize:20 ,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
