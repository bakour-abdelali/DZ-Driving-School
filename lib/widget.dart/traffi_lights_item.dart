import 'package:ahmed/const/const.dart';
import 'package:ahmed/controler/controles_screen.dart';
import 'package:ahmed/controler/trafic_next_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../conpanes/themes.dart';
import '../modle/rule.dart';
import '../modle/traffic.dart';
import '../view/trafic_next_screen.dart';

// ignore: must_be_immutable
class TrafficLightsItem extends StatelessWidget {
  //Function? onTap;
  final bool indexLive;
  final String? title;
  final String? urlImag;
  final int? index;
  TrafficLightsItem(
      {super.key,
      required this.indexLive,
      required this.title,
      required this.urlImag,
      required this.index});
  TraficNextControler controllerNext = Get.find<TraficNextControler>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      hoverColor: Colors.green[100], //primaryLight,
      onTap: () {
        if ((controllerNext.note >= index! * 20 && indexLive) ||
            (controllerNext.note >= (index! + 7) * 20 && !indexLive)) {
          Get.to(
              transition: Transition.cupertino,
              duration: const Duration(milliseconds: 400),
              () => TraficNextScreen(
                    indexLive: indexLive,
                    nmbrtPage: index,
                    titleAppBar: title,
                    list: indexLive ? list[index!] : sublistRules(index!),
                  ));
        } else {
          Get.defaultDialog(
              title: 'نقاطك غير كافية',
              middleTextStyle: Get.textTheme.headline5,
              middleText:
                  'عليك جمع نقاط اكثر كي تتمكن من الدخول في هاذا المستوى',
              textCancel: 'حسنا');
        }
        //go to screen
        print(title);
      },
      child: GetBuilder<ControlesScreen>(
        builder: (controller) {
          return Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Card(
                //   padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                elevation: 20,
                // color: Colors.white,
                //  borderOnForeground: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // decoration: BoxDecoration(
                //   //image:DecorationImage() ,
                //   borderRadius: BorderRadius.circular(20),
                //   // border: Border.all(
                //   //   color: Colors.green,
                //   //   //width: 10,
                //   //   width: 3,
                //   // ),
                //   color: !controller.modeDarc
                //       ? Colors.white
                //       : primaryLight, // Colors.green,
                // ),
                child: Column(
                  //alignment: Alignment.bottomCenter,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          urlImag!,
                          fit: BoxFit.values[1],
                          //  fit: BoxFit.fitHeight,
                          height: double.infinity,
                          width: double.infinity,
                          // height: 200,
                          //height: 2000,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 5),
                        width: double.infinity,
                        child: Text(
                          '$title',
                          style: controller.modeDarc
                              ? Themes.isDarcMode.textTheme.bodyText1!.copyWith(
                                  // color: Colors.white,
                                  fontSize: 18,
                                )
                              : Themes.isLightMode.textTheme.bodyText1!
                                  .copyWith(
                                  // color: Colors.white,
                                  fontSize: 18,
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              indexLive
                  ? controllerNext.note < index! * 20
                      ? const Icon(
                          Icons.lock_sharp,
                          color: Colors.black87,
                          size: 150,
                        )
                      : controllerNext.note != index! * 20
                          ? const Icon(
                              Icons.check,
                              size: 100,
                              color: primaryColor,
                            )
                          : const Icon(
                              Icons.cabin,
                              size: 1,
                            )
                  : controllerNext.note < (index! + 7) * 20
                      ? const Icon(
                          Icons.lock_sharp,
                          color: Colors.black87,
                          size: 150,
                        )
                      : controllerNext.note > (index! + 7) * 20
                          ? const Icon(
                              Icons.check,
                              size: 100,
                              color: primaryColor,
                            )
                          : const Icon(
                              Icons.newspaper_outlined,
                              size: 1,
                            )
            ],
          );
        },
      ),

      // GridTile(
      //     // footer: Text('HHHHHHHHH'),
      //     child: Container(
      //       padding: const EdgeInsets.all(10),
      //       margin: const EdgeInsets.all(5),
      //       decoration: BoxDecoration(
      //         color: Colors.black12,
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Image.asset(
      //         urlImag!,
      //         fit: BoxFit.contain,
      //         //height: 2000,
      //       ),
      //     ),
      //     footer:
      //     Container(
      //       decoration: BoxDecoration(boxShadow: const <BoxShadow>[
      //         BoxShadow(
      //           color: Colors.black87,
      //           offset: Offset(0, 0),
      //           blurRadius: 5,
      //         )
      //       ], color: Colors.black12, borderRadius: BorderRadius.circular(10)),
      //       //height: 50,
      //       width: double.infinity,
      //       padding: const EdgeInsets.all(10),
      //       child: Text(
      //         '${title}',
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     )),

      //child: null,
      // Container(
      //   padding: const EdgeInsets.all(10),
      //   margin: const EdgeInsets.all(5),
      //   decoration: BoxDecoration(
      //     color: Colors.black12,
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   child: Image.asset(
      //     urlImag!,
      //     fit: BoxFit.contain,
      //     //height: 2000,
      //   ),
      // )),
    );
  }
}
