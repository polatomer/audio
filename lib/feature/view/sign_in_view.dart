import 'package:audio/product/widget/button/custom_elevated_button.dart';
import 'package:audio/product/widget/text-field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const _BackgroundContainer(),
        Padding(
          padding: context.padding.horizontalNormal,
          child: Column(
            children: [
              const Spacer(flex: 3),
              _loginTitle(context),
              Padding(
                  padding: context.padding.onlyTopNormal,
                  child: _logInSubtitle(context)),
              const Spacer(flex: 4),
              const CustomTextField(
                borderRadius: 10,
                hintText: 'Email',
                imageString: 'assets/png/ic_mail.png',
                filled: true,
              ),
              Padding(
                padding: context.padding.onlyTopNormal,
                child: const SizedBox(
                  height: 50,
                  child: CustomTextField(
                    borderRadius: 10,
                    hintText: 'Password',
                    imageString: 'assets/png/ic_lock.png',
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: context.padding.onlyTopNormal,
                child: _forgotPassword(context),
              ),
              Padding(
                padding: context.padding.onlyTopNormal,
                child: SizedBox(
                  width: context.sized.dynamicWidth(0.9),
                  height: 50,
                  child: CustomElevatedButton(
                      buttonColor: const Color(0xff0acf83),
                      title: Text(
                        'Sign In',
                        style: context.general.textTheme.titleMedium
                            ?.copyWith(color: Colors.white),
                      ),
                      borderRadius: 10),
                ),
              ),
              _signUpRow(context),
              const Spacer(flex: 2)
            ],
          ),
        ),
      ],
    ));
  }

  Text _loginTitle(BuildContext context) {
    return Text(
      'Audio',
      style: context.general.textTheme.displayMedium?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Text _logInSubtitle(BuildContext context) {
    return Text(
      'It`s modular and designed to last',
      style:
          context.general.textTheme.titleMedium?.copyWith(color: Colors.white),
    );
  }

  Text _forgotPassword(BuildContext context) {
    return Text(
      'Forgot Password',
      style:
          context.general.textTheme.titleSmall?.copyWith(color: Colors.white),
    );
  }

  Row _signUpRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Didn`t have any account?',
        style:
            context.general.textTheme.bodyMedium?.copyWith(color: Colors.white),
      ),
      _signUpButton(context)
    ]);
  }

  TextButton _signUpButton(BuildContext context) {
    return TextButton(
      child: Text(
        'Sign Up here',
        style: context.general.textTheme.titleSmall
            ?.copyWith(color: const Color(0xff0acf83)),
      ),
      onPressed: () {},
    );
  }
}

class _BackgroundContainer extends StatelessWidget {
  const _BackgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/png/ic_audio.png"), fit: BoxFit.cover)),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            filled: true,
            prefixIcon: SizedBox(child: Image.asset('assets/png/ic_mail.png')),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: 'Email'));
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            filled: true,
            prefixIcon: SizedBox(child: Image.asset('assets/png/ic_lock.png')),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: 'Password'));
  }
}
