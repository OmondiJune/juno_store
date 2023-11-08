import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key, required this.title, required this.subTitle, required this.image, required this.crossAxisAlignment, this.heightBetween, this.imageHeight=0.2,});
 final String image,title,subTitle;
 final CrossAxisAlignment crossAxisAlignment;
 final double? heightBetween;
 final double imageHeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(image),height: size.height*0.2,width: double.infinity,),
        Text(title,style: Theme.of(context).textTheme.displayMedium,),
        Text(subTitle,style: Theme.of(context).textTheme.bodySmall,),
      ],
    );
  }
}
