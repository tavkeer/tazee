import 'package:tazee/export_screens.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //width of screen
    final double width = MediaQuery.of(context).size.width;

    //height of screen
    final double height = MediaQuery.of(context).size.height;

    //emailController
    final TextEditingController emailController = TextEditingController();

    //usennameController
    final TextEditingController usernameController = TextEditingController();

    //passwordController
    final TextEditingController passwordController = TextEditingController();

    //progress indicator
    EmailSignController progressController = Get.put(EmailSignController());

    //signup function
    signup() async {
      progressController.register(
        emailController.text,
        passwordController.text,
      );
    }

    return Scaffold(
      body: Obx(
        () => (progressController.isLoading.value)
            ? const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  color: Colors.grey,
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),

                      // logo
                      // Lottie.asset(
                      //   "assets/loginIcon.json",
                      //   width: width * 0.8,
                      //   height: height * 0.2,
                      // ),

                      Image.asset(
                        "assets/logo.png",
                        width: width * 0.8,
                        height: height * 0.2,
                      ),

                      const SizedBox(height: 40),

                      // welcome back, you've been missed!
                      Text(
                        'Welcome back you\'ve been missed!',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 25),

                      // username textfield
                      MyTextField(
                        controller: usernameController,
                        hintText: 'Full Name',
                        obscureText: false,
                      ),

                      const SizedBox(height: 10),

                      // email textfield
                      MyTextField(
                        controller: emailController,
                        hintText: 'Email',
                        obscureText: false,
                      ),

                      const SizedBox(height: 10),

                      // password textfield
                      MyTextField(
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true),

                      const SizedBox(height: 10),

                      // forgot password?
                      const ForgotPasswordSection(),

                      const SizedBox(height: 25),

                      // sign in button
                      MyButton(
                        onTap: signup,
                        text: "SignUp",
                      ),

                      const SizedBox(height: 50),

                      // or continue with section
                      const DividerWithMiddleText(text: 'Or continue with'),

                      const SizedBox(height: 30),

                      // google sign in button
                      const SquareTile(imagePath: 'assets/google.png'),

                      const SizedBox(height: 30),

                      // Already a member? login now
                      ToggleLoginSignup(
                        textOne: 'Already a member?',
                        textTwo: 'login now',
                        ontap: () => Get.off(
                          () => const LoginPage(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
