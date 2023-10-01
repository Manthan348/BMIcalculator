import 'package:flutter/material.dart';

const bottomColor = Color(0xFFEB1555);
const activeColor = Color(0xFF1d1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeColor),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    width: double.infinity,
                    height: 80.0,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.colour,
  });
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
