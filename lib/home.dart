import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getviewandwidget/mycontroller.dart';

class MyHomePage extends GetView<MyController>{
  @override
  Widget build(BuildContext context) {

  Get.put(MyController());
 // Get.create(() => MyController());
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text('GetViewText'),
     ),
     body: Center(
       child:  Obx((){
         return Text('count is ${controller.count}',style: Theme.of(context).textTheme.headline3,);
       }),
     ),
     floatingActionButton: FloatingActionButton(onPressed: () {
       print(controller.hashCode);
       controller.increment();
     },

       child: Icon(Icons.add,color: Colors.white,),
     ),
   );
  }

}
