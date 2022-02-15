
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/styleguide_web.dart';

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
        return Container(
          height: 700,
          width: constraints.maxWidth,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: AppThemeWeb.secondaryColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.call, size: 30, color: Colors.blue,),
                  const SizedBox(width: 15,),
                  Text('CONTACT ME', style: AppThemeWeb.heading, overflow: TextOverflow.clip,),
                ],
              ),
              const SizedBox(width: 30,),
              Form(
                key: _formKey,
                child: Column(
                  children: [

                    Row(
                      children: [
                        TextFormField(
                          controller: _name,
                          decoration: const InputDecoration(
                            hintText: 'First name',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(width: 30,),
                        TextFormField(
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
