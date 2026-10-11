import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';

class SecuritySwitchScreen extends StatefulWidget {
  const SecuritySwitchScreen({super.key});

  @override
  State<SecuritySwitchScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<SecuritySwitchScreen> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Security",style: TextStyle(
          fontSize: 18.sp,
          fontWeight: .bold,
        ),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(LucideIcons.move_left,size: 24.h,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Align(
          alignment: .topCenter,
          child: Container(
            width: 327.w,
            decoration: BoxDecoration(
              border: .all(
                color: Appcolors.greyColor.withOpacity(0.5),
              ),
              borderRadius: .circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: [
                  ListTile(
                      contentPadding: .zero,
                      title: Text("Face ID",style: TextStyle(fontSize: 16.sp,
                          fontWeight: .bold
                      ),),
                      trailing: Switch(
                        value: status,
                        onChanged: (value) {
                          setState(() {
                            status = value;
                          });
                        },
                        activeTrackColor: Appcolors.primaryColor,
                      )
                  ),
                  Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                  SizedBox(height: 6.h,),
                  ListTile(
                      contentPadding: .zero,
                      title: Text("Remember Password",style: TextStyle(fontSize: 16.sp,
                          fontWeight: .bold
                      ),),
                      trailing: Switch(
                        value: status,
                        onChanged: (value) {
                          setState(() {
                            status = value;
                          });
                        },
                        activeTrackColor: Appcolors.primaryColor,
                      )
                  ),
                  Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                  SizedBox(height: 6.h,),
                  ListTile(
                      contentPadding: .zero,
                      title: Text("Touch ID",style: TextStyle(fontSize: 16.sp,
                          fontWeight: .bold
                      ),),
                      trailing: Switch(
                        value: status,
                        onChanged: (value) {
                          setState(() {
                            status = value;
                          });
                        },
                        activeTrackColor: Appcolors.primaryColor,
                      )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
