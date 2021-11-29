import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:loss_belly/dashboard.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({ Key? key }) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {


   // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Text("HI", style: TextStyle(fontFamily: 'Montserrat', fontSize: 25, color: Colors.white),)),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Text("Select Gender", style: TextStyle(fontFamily: 'Montserrat', fontSize: 25, color:Colors.white))),
        Row(
          children: [
            SvgPicture.asset('assets/images/girl.svg', 
            height: MediaQuery.of(context).size.height*0.2,
            ),
            SvgPicture.asset('assets/images/boy.svg',
            height: MediaQuery.of(context).size.height*0.2,
            ),
          ],
        ),
        Row(
          children: [
Radio(
 value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'ONE';
                  id = 1;
                });
              },
   ),
   Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'TWO';
                  id = 2;
                });
              },
            ),
          ],
        ),
        ElevatedButton(
          onPressed: (){
            Get.to(Dashboard());
          }, child: Text("Next"))
        
      ],),
    );
  }
}