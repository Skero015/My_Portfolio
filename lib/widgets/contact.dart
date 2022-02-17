
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';
import 'package:portfolio_webapp/utils/validators.dart';
import 'package:portfolio_webapp/widgets/custom_button.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _surname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _subject = TextEditingController();
  final TextEditingController _message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.call, size: 30, color: Colors.blue,),
                const SizedBox(width: 15,),
                Text('CONTACT ME', style: AppThemeWeb.heading, overflow: TextOverflow.clip,),
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              height: 700,
              width: constraints.maxWidth / 2,
              padding: const EdgeInsets.symmetric(horizontal: 100),
              color: AppThemeWeb.secondaryColor,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    constraints.maxWidth < 800 ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: constraints.maxWidth / 10,
                          child: TextFormField(
                            controller: _name,
                            decoration: const InputDecoration(
                              hintText: 'First name *',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            validator: Validators.validateName,
                          ),
                        ),
                        const SizedBox(width: 30,),
                        SizedBox(
                          width: constraints.maxWidth / 10,
                          child: TextFormField(
                            controller: _surname,
                            decoration: const InputDecoration(
                              hintText: 'Last name *',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            validator: Validators.validateName,
                          ),
                        ),
                      ],
                    ) : Column(
                      children: [
                        SizedBox(
                          width: constraints.maxWidth/ 2,
                          child: TextFormField(
                            controller: _name,
                            decoration: const InputDecoration(
                              hintText: 'First name *',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            validator: Validators.validateName,
                          ),
                        ),
                        const SizedBox(width: 50,),
                        SizedBox(
                          width: constraints.maxWidth / 2,
                          child: TextFormField(
                            controller: _surname,
                            decoration: const InputDecoration(
                              hintText: 'Last name *',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            validator: Validators.validateName,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    TextFormField(
                      controller: _email,
                      decoration: const InputDecoration(
                        hintText: 'Email *',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      validator: Validators.validateEmail,
                    ),
                    const SizedBox(height: 50,),
                    TextFormField(
                      controller: _subject,
                      decoration: const InputDecoration(
                        hintText: 'Subject',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      validator: Validators.validateField,
                    ),
                    const SizedBox(height: 50,),
                    TextFormField(
                      controller: _message,
                      decoration: const InputDecoration(
                        hintText: 'Message',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      validator: Validators.validateField,
                    ),
                    const SizedBox(height: 50,),
                    CustomButton(
                      onPressed: () {

                        if(!_formKey.currentState!.validate()) {

                        }else{

                        }

                    },
                      buttonText: 'Send',
                      shadowColor: MaterialStateProperty.all<Color>(Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
          ],
        );
      }
    );
  }
}
