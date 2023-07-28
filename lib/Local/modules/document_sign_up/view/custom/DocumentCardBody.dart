import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/ScreenSize.dart';
import '../../controller/DocumentController.dart';

class DocumentCardBody extends StatelessWidget {
  const DocumentCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DocumentImplement>(
      builder: (controller) => Container(
        width: AppSize.screenWidth * 0.9,
        height: AppSize.screenHight * 0.55,
        margin: const EdgeInsets.only(top: 130),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              SizedBox(height: AppSize.screenHight * 0.02),
              SizedBox(
                height: AppSize.screenHight * 0.51,
                child: ListView.separated(
                  itemCount: controller.documentListData.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                      title: Text(
                        controller.documentListData[index].title,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      subtitle: Text(
                        controller.documentListData[index].subTitle,
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 17),
                      ),
                      leading: CircleAvatar(
                          backgroundColor:
                              controller.documentListData[index].active == false
                                  ? AppColor.grey
                                  : AppColor.greenPrimary,
                          maxRadius: 7)),
                  separatorBuilder: (context, index) => const Divider(
                    color: Colors.grey,
                    endIndent: 35,
                    indent: 35,
                    thickness: 0.25,
                  ),
                ),
              ),
              SizedBox(height: AppSize.screenHight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
