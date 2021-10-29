import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:testing_task/ui/theme/app_colors.dart';
import 'package:testing_task/ui/widgets/auth_screen/auth_screen_decoration.dart';
import 'package:testing_task/ui/widgets/auth_screen/auth_screen_view_model.dart';

class AuthScreenWidget extends StatelessWidget {
  const AuthScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: _AuthScreenBody(),
    );
  }
}

class _AuthScreenBody extends StatelessWidget {
  const _AuthScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration:
              const BoxDecoration(gradient: AppColors.mainAppGradient),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 16, vertical: size.height * 0.21),
            child: const _AuthForm(),
          ),
        ),
        Positioned(
          top: 45,
          left: 16,
          child: Text('Login', style: AuthScreenDecoration.headerTextStyle),
        ),
      ],
    );
  }
}

class _AuthForm extends StatelessWidget {
  const _AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AuthScreenDecoration.roundCornerContainerDecoration,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          children: const [
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: _NicknameTextField(),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: _PasswordTextField(),
            ),
            Flexible(
              flex: 4,
              child: _AuthButtonWidget(),
            ),
            Flexible(
              flex: 3,
              child: _PolicyAcceptionWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class _NicknameTextField extends StatelessWidget {
  const _NicknameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<AuthScreenViewModel>();
    return Observer(
      builder: (_) => TextField(
        onChanged: (value) {
          viewModel.error.nicknameError = null;
          viewModel.nickname = value;
        },
        cursorColor: AppColors.redAccentColor,
        style: const TextStyle(fontSize: 16),
        decoration: AuthScreenDecoration.nicknameTextFieldDecoration(
            viewModel.error.nicknameError),
      ),
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AuthScreenViewModel>();
    return Observer(
      builder: (_) => TextField(
        onChanged: (value) {
          viewModel.error.passwordError = null;
          viewModel.password = value;
        },
        cursorColor: AppColors.redAccentColor,
        style: const TextStyle(fontSize: 16),
        obscureText: viewModel.passwordVisible,
        obscuringCharacter: '*',
        decoration: AuthScreenDecoration.passwordTextFieldDecoration(
          viewModel.error.passwordError,
          viewModel.onPasswordVisibilityButtonPressed,
        ),
      ),
    );
  }
}

class _AuthButtonWidget extends StatelessWidget {
  const _AuthButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AuthScreenViewModel>();
    return Observer(
      builder: (_) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ElevatedButton(
          onPressed: viewModel.canSignIn
              ? () => viewModel.onAutnButtonPressed(context)
              : null,
          style: AuthScreenDecoration.authButtonStyle,
          child: Ink(
            decoration: BoxDecoration(
                gradient: viewModel.canSignIn
                    ? AppColors.mainAppGradient
                    : AuthScreenDecoration.unavaliableButtonGradient,
                borderRadius: BorderRadius.circular(5)),
            child: AspectRatio(
              aspectRatio: 5 / 1,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Sign in',
                  style: AuthScreenDecoration.buttonTextStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PolicyAcceptionWidget extends StatelessWidget {
  const _PolicyAcceptionWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Регистрируясь вы принимаете наши условия:',
            ),
            const SizedBox(height: 3),
            InkWell(
              onTap: () {},
              child: Text(
                'политику использования данных',
                style: AuthScreenDecoration.hyperlinkTextDecoration,
              ),
            ),
            const SizedBox(height: 2),
            InkWell(
              onTap: () {},
              child: Text(
                'политику в отношении файлов cookie',
                style: AuthScreenDecoration.hyperlinkTextDecoration,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
