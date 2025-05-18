import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:punworld_app/routes/routes.dart';
import 'package:punworld_app/widgets/index.dart';
import 'package:punworld_app/constants/index.dart';
import 'package:punworld_app/controller/index.dart';
class Wrapped extends StatelessWidget {
  const Wrapped({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormSignIn(),
    );
  }
  
}

class FormSignIn extends GetView<SignInController> {
  const FormSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(child: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logo,
        verticalSpace,
        Obx(()=>Text(controller.errorMess.value)),
        Form(key: _formKey,
          child: buildSignInForm(_formKey),),

      ],
    ),));
  }

  Column buildSignInForm(GlobalKey<FormState> _formKey) {
    return Column(
          children: [
            TextFormFieldWidget(
              labelTitle: 'Email',
              input: controller.email.value,
              onChanged: (value){controller.setEmail(value);},
            ),
            verticalSpace,
            TextFormFieldWidget(
              labelTitle: 'Mật khẩu',
              input: controller.password.value,
              onChanged: (value){controller.setPassword(value);},
              obscureText: true,
            ),
            verticalSpace,
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                controller.signInEmail();
              }
            }, child: Text('Đăng nhập')),
            verticalSpace,
            TextButton(
                onPressed: (){Get.toNamed(Routes.sign_up);},
                child: Text('Chưa có tài khoản ? Đăng ký tại đây.'))
          ],
        );
  }
}
