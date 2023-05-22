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
                        obscureText: true,
                      ),

                      const SizedBox(height: 10),

                      // forgot password?
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 25),

                      // sign in button
                      MyButton(
                        onTap: signup,
                        text: "SignUp",
                      ),

                      const SizedBox(height: 50),

                      // or continue with section
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                  thickness: 0.5, color: Colors.grey[400]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Or continue with',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),

                      // google + apple sign in buttons
                      const SquareTile(imagePath: 'assets/google.png'),

                      const SizedBox(height: 30),

                      // not a member? register now
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already a member?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 4),
                          InkWell(
                            onTap: () => Get.off(() => const LoginPage()),
                            child: const Text(
                              'login now',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
