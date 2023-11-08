import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({
    super.key, required this.btnIcon, required this.head, required this.subHead, required this.onTap,
  });
  final IconData btnIcon;
  final String head,subHead;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade300,
        ),
        child:  Row(
          children: [
            Icon(btnIcon,size: 60,),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(head,style: Theme.of(context).textTheme.displayMedium,),
                Text(subHead,style: Theme.of(context).textTheme.displayMedium,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
