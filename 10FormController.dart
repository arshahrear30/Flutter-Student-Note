import 'package:flutter/material.dart';

class FormController extends StatefulWidget {
  const FormController({super.key});

  @override
  State<FormController> createState() => _FormControllerState();
}

class _FormControllerState extends State<FormController> {

  // ফোন নম্বর ইনপুট নিয়ন্ত্রণ করার জন্য Controller
  final TextEditingController phoneController = TextEditingController();

  // পাসওয়ার্ড ইনপুট নিয়ন্ত্রণ করার জন্য Controller
  final TextEditingController passwordController = TextEditingController();

  // Form Validation করার জন্য Global Key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  

  @override
  void dispose() { //eta kortei hoibo .. na hoy data leak howar possible thakey and app battery consumption komey ..
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),

        child: Form(

          key: formKey,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Text(
                'Login in Here...!',
                style: TextStyle(fontSize: 25),
              ),

              const SizedBox(height: 30),

              TextFormField(

                controller: phoneController,

                decoration: InputDecoration(

                  hintText: 'Phone number',

                  labelText: 'Enter Phone number',

                  prefixIcon: const Icon(Icons.phone),

                  suffixIcon: const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),

                  filled: true,

                  fillColor: Colors.grey.shade100,

                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                  ),

                  border: const OutlineInputBorder(),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {

                    return 'Please enter phone number';

                  } else if (value.length != 11) {

                    return 'Please enter correct phone number';

                  }

                  return null;

                },
              ),

              const SizedBox(height: 30),

              TextFormField(

                controller: passwordController,

                obscureText: true,

                decoration: InputDecoration(

                  hintText: 'Password',

                  labelText: 'Enter Password',

                  prefixIcon: const Icon(Icons.lock),

                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                  ),

                  filled: true,

                  fillColor: Colors.grey.shade100,

                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                  ),

                  border: const OutlineInputBorder(),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {

                    return 'Please enter password';

                  } else if (value.length < 6) {

                    return 'Password must be greater than 6 characters';

                  }

                  return null;

                },

              ),

              const SizedBox(height: 30),

              SizedBox(

                width: double.infinity,

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.blue,

                    foregroundColor: Colors.white,

                  ),

                  onPressed: () {

                    if (formKey.currentState!.validate()) {

                      print(phoneController.text);
                      print(passwordController.text);

                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
