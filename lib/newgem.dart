import 'package:flutter/material.dart';

void main() {
  runApp(AddGemPage());
}

class AddGemPage extends StatefulWidget {
  const AddGemPage({Key? key}) : super(key: key);

  @override
  State<AddGemPage> createState() => _AddGemPageState();
}

class _AddGemPageState extends State<AddGemPage> {
  final _formKey = GlobalKey<FormState>();

  late String? gemName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.purple,
                    ),
                    label: Text(
                      'Add New Gem',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(5.0),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                  UserInputs(
                    hintText: 'Gem Name',
                    errorMessage: 'Enter the gem name',
                    onSaved: (value) {
                      gemName = value;
                    },
                  ),
                  UserInputs(
                    hintText: 'Gem Code',
                    errorMessage: 'Enter the gem code',
                  ),
                  UserInputs(
                    hintText: 'Gem Variety',
                    errorMessage: 'Enter the gem variety',
                  ),
                  UserInputs(
                    hintText: 'Upload Image',
                  ),
                  UserInputs(
                    hintText: 'Gem Holder',
                    errorMessage: 'Enter the gem holder',
                  ),
                  UserInputs(
                    hintText: 'Previous Owner',
                    errorMessage: 'Enter the previous owner',
                  ),
                  UserInputs(
                    hintText: 'Purchase Date',
                    errorMessage: 'Enter the purchase date',
                  ),
                  UserInputs(
                    hintText: 'Rough Weight',
                    errorMessage: 'Enter the rough weight',
                  ),
                  UserInputs(
                    hintText: 'Weight After Perform',
                    errorMessage: 'Enter the weight after perform',
                  ),
                  UserInputs(
                    hintText: 'Weight After Cut & Polish',
                    errorMessage: 'Enter the weight after cut & polish',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Measurements After Cut & Polish',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: UserInputs(
                          hintText: 'Height',
                          errorMessage: 'Enter the height',
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: UserInputs(
                          hintText: 'Weight',
                          errorMessage: 'Enter the weight',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Rs.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: UserInputs(
                          hintText: 'Purchase Price',
                          errorMessage: 'Enter the purchase price',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Rs.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: UserInputs(
                          hintText: 'Performing Charges',
                          errorMessage: 'Enter the performing charges',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Rs.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: UserInputs(
                          hintText: 'Cutting Charges',
                          errorMessage: 'Enter the cutting charges',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Rs.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: UserInputs(
                          hintText: 'Total Cost',
                          errorMessage: 'Enter the total cost',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: BottomButton(
                          label: 'Back',
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: BottomButton(
                          label: 'Submit',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              print(gemName);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.label, this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.purple),
        elevation: const MaterialStatePropertyAll(5.0),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Text(
        label,
      ),
    );
  }
}

class UserInputs extends StatelessWidget {
  const UserInputs({super.key, this.hintText, this.errorMessage, this.onSaved});

  final String? hintText;
  final String? errorMessage;
  final void Function(String? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
