import 'package:flutter/material.dart';
import 'package:get_x_exercise/controllers/get_builder.dart';
import 'package:get_x_exercise/controllers/reactive_state.dart';
import 'package:get/get.dart';
import 'package:get_x_exercise/controllers/state_mixin_controller.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    ReactiveStateController controller1 = Get.put(ReactiveStateController());
    GetBuilderController controller2 = Get.put(GetBuilderController());
    StateMixinController controller3 = Get.put(StateMixinController());
    return Scaffold(
      appBar: AppBar(title: Text('GetX Exercise'),),
      body: SafeArea(child: SingleChildScrollView(child: Column(
        children: [
          Obx(()=>Text('Reactive State value: ${controller1.count}'),),
          ElevatedButton(onPressed: controller1.increase, child: Text('ReactiveState')),
          GetBuilder<GetBuilderController>(init: GetBuilderController(), builder: (value)=>Text('GetBuilder value: ${value.count}'),),
          ElevatedButton(onPressed: controller2.increase, child: Text('GetBuilder State')),
          Container(
            child: controller3.obx((state)=>Text(state),onLoading: CircularProgressIndicator(),onError: (error)=>Text('$error')),
          ),
          ElevatedButton(onPressed: controller3.getCount, child: Text('StateMixin')),
        ],
      ),)),
    );
  }
}
