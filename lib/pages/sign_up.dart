import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:punworld_app/constants/space.dart';
import 'package:punworld_app/controller/sign_up_controller.dart';
import 'package:punworld_app/constants/index.dart';
import 'package:punworld_app/models/customer.dart';
import 'package:punworld_app/widgets/index.dart';

class SignUp extends GetView<SignUpController> {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppbarWidget(title: 'Đăng ký', isBack: true),
      body: FormWidget(formKey: _formKey),
    );
  }
}

class FormWidget extends GetView<SignUpController> {
  FormWidget({super.key, required GlobalKey<FormState> formKey})
    : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  Customer user = Customer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: buildForm(),
          ),
        ),
      ),
    );
  }

  Column buildForm() {
    return Column(
            children: [
              TextFormFieldWidget(
                errorMessage: MessageStrings.validUserName,
                obscureText: false,
                labelTitle: 'Tên người dùng',
                onChanged: (value) {
                  controller.setUserName(value);
                },
              ),
              verticalSpace,
              TextFormFieldWidget(
                errorMessage: MessageStrings.validEmail,
                obscureText: false,
                labelTitle: 'Email',
                onChanged: (value) {
                  controller.setEmail(value);
                },
              ),
              verticalSpace,
              TextFormFieldWidget(
                errorMessage: MessageStrings.validPassword,
                obscureText: true,
                labelTitle: 'Mật khẩu',
                onChanged: (value) {
                  controller.setPassword(value);
                },
              ),
              verticalSpace,
              TextFormFieldWidget(
                errorMessage: MessageStrings.validCPassword,
                obscureText: true,
                labelTitle: 'Xác nhận mật khẩu',
                onChanged: (value) {
                  controller.setCPassword(value);
                },
              ),
              verticalSpace,
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    controller.registerEmail();
                  }
                },
                child: Text('Đăng ký'),
              ),
            ],
          );
  }
}
