import 'package:flutter/material.dart';

class TextEditing extends StatefulWidget {
  const TextEditing({super.key});

  @override
  State<TextEditing> createState() => _TextEditingState();
}

class _TextEditingState extends State<TextEditing> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final contact = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Text Editing Controller'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: const Color.fromARGB(211, 3, 244, 204),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                      labelText: 'User Name',
                      hintText: 'Name',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),

                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: 'Email Id',
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                TextFormField(
                  controller: contact,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Contact',
                    hintText: 'Number',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),

                // Text(contact.text),
                ElevatedButton(
                  onPressed: () {
                    print(name.text);
                    // contact.dispose();
                    password.clear();
                    email.text = 'laksh@gmail.com';
                  },
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Onchanged',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  onChanged: (value) => {
                    print(value),
                  },
                ),

                // FloatingActionButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   child: const Text('Back'),
                // ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
