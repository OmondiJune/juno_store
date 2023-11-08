import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:juno_store/themes/dimensions.dart';
class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.back(), icon:const FaIcon(FontAwesomeIcons.arrowLeft),),
        title: Text("Edit Profile",style: Theme.of(context).textTheme.displayMedium,),
      ),
      body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(20),
         child: Column(
           children: [
             Stack(
               children: [
                 SizedBox(
                   width: 120,
                   height: 120,
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(100),child: const Image(image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Favatar-face&psig=AOvVaw3JG5-WPyXlzfLJLzcWx7S4&ust=1695791212998000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPCh4trAx4EDFQAAAAAdAAAAABAE'),),
                   ),
                 ),
                 Positioned(
                   bottom: 0,
                   right: 0,
                   child: Container(
                     width: 35,
                     height: 35 ,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100),
                       color: Colors.blueAccent,
                     ),
                     child: const Center( // Center the icon within the circular border radius
                       child: FaIcon(FontAwesomeIcons.camera, color: Colors.black),
                     ),
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 50,),
             Form(child:Column(
               children: [
                 TextFormField(
                   decoration: const InputDecoration(label: Text("Name"),prefixIcon: FaIcon(FontAwesomeIcons.person),border: OutlineInputBorder()),
                 ),
                 const SizedBox(height: tvHeight -20,),
                 TextFormField(
                   decoration: const InputDecoration(label: Text("Email"),prefixIcon: FaIcon(FontAwesomeIcons.envelopeOpen),border: OutlineInputBorder()),
                 ),
                 const SizedBox(height: tvHeight -20,),
                 TextFormField(
                   decoration: const InputDecoration(label: Text("Phone Number"),prefixIcon: FaIcon(FontAwesomeIcons.phone),border: OutlineInputBorder()),
                 ),
                 const SizedBox(height: tvHeight -20,),
                 TextFormField(
                   decoration: const InputDecoration(label: Text("Password"),prefixIcon: FaIcon(FontAwesomeIcons.eyeSlash)),
                 ),
               ],
             ) ,
             ),
           ],
         ),
       ),
      ),
    );
  }
}
