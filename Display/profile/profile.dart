import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:juno_store/Display/profile/update_profile.dart';
import 'package:juno_store/themes/images.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(//Appbar Definitions
        leading: IconButton(onPressed: (){},
            icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
        title: Text('Profile',style: Theme.of(context).textTheme.displayMedium),
        actions: [
          IconButton(
              onPressed: (){},
              icon:  FaIcon(isDark? FontAwesomeIcons.sun : FontAwesomeIcons.moon)),
        ],
      ),
      body: SingleChildScrollView(
        child:Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),child: const Image(image: AssetImage(profPic),),
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
                        child: FaIcon(FontAwesomeIcons.pen, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Text('Ian  Pascal', style: Theme.of(context).textTheme.headlineMedium),
              Text('pascalian18@gmail.com', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(()=> const UpdateProfile()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,side: BorderSide.none,shape: const StadiumBorder()
                  ),
                  child: const Text("Edit Profile",style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),
              MenuWidget(title: 'Settings', icon:FontAwesomeIcons.gear,onPress: (){},),
              MenuWidget(title: "Payment Details",icon: FontAwesomeIcons.wallet,onPress: (){},),
              MenuWidget(title: 'Address',icon: FontAwesomeIcons.locationPin,onPress: (){},),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              MenuWidget(title: 'Update Details',icon: FontAwesomeIcons.pencil,onPress: (){},),
              MenuWidget(title: 'Sign Out', icon: FontAwesomeIcons.arrowRightFromBracket, onPress: (){},textColor: Colors.red,endIcon: false,)
            ],
          ),
        ),
      ),

    );
  }
}
//Menu Buttons Widgets
class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
    required this.title,
    required this.icon,
    this.endIcon = true,
    this.textColor,
    required this.onPress,
  });
  final String title;
  final IconData icon;
  final bool endIcon;
  final Color? textColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? Colors.white:Colors.blueAccent;

    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor.withOpacity(0.1),
        ),
        child: Center( // Center the icon within the circular border radius
          child: FaIcon(icon, color: iconColor),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall?.apply(color: textColor),
      ),
      trailing: endIcon
          ? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white.withOpacity(0.1),
        ),
        child: const Center( // Center the end icon within the circular border radius
          child: FaIcon(
            FontAwesomeIcons.angleRight,
            size: 18.0,
            color: Colors.white,
          ),
        ),
      )
          : null,
    );
  }
}
