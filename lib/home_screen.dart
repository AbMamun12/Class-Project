import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _firstNumTecController = TextEditingController();
  final TextEditingController _secondNumTecController = TextEditingController();
  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();

  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _firstNumTecController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'First Number',
                  labelText: 'First Number',
                ),
                  validator: (String? value){
                    if (value == null || value.isEmpty){
                      return 'Enter a Value';
                    }
                    return null;
                  }
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _secondNumTecController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Second Number',
                  labelText: 'Second Number',
                ),
                  validator: (String? value){
                    if (value == null || value.isEmpty){
                      return 'Enter a Value';
                    }
                    return null;
                  }
              ),
              const SizedBox(height: 15),
              _buildButtonBar(),
              const SizedBox(height: 15),
              Text(
                'Result: ${_result.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildButtonBar(){
     return ButtonBar(
       alignment: MainAxisAlignment.center,
       children: [
         IconButton(
             onPressed: _onTapAddButton, icon: const Icon(Icons.add)),
         IconButton(
             onPressed: _onTapRemoveButton,
             icon: const Icon(Icons.remove)),
         TextButton(
           onPressed: _onTapMultiplyButton,
           child: Text(
             'X',
             style: TextStyle(
               color: Colors.black,
               fontSize: 16,
               fontWeight: FontWeight.w500,
             ),
           ),
         ),
         TextButton(
           onPressed: _onTapDividedButton,
           child: Text(
             '÷',
             style: TextStyle(
               color: Colors.black,
               fontSize: 25,
               fontWeight: FontWeight.w500,
             ),
           ),
         ),
         TextButton(
           onPressed: _onTapModulusButton,
           child: Text(
             '%',
             style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
         ),
       ],
     );
  }

  void _onTapAddButton() {
    if (_formKey.currentState!.validate()){
      double firstNum = double.tryParse(_firstNumTecController.text) ?? 0;
      double secondNum = double.tryParse(_secondNumTecController.text) ?? 0;

      _result = firstNum + secondNum;
      setState(() {});
    }

  }

  void _onTapRemoveButton() {
    if (_formKey.currentState!.validate()==false){
      return;
    }
    double firstNum = double.tryParse(_firstNumTecController.text) ?? 0;
    double secondNum = double.tryParse(_secondNumTecController.text) ?? 0;

    _result = firstNum - secondNum;
    setState(() {});
  }

  void _onTapMultiplyButton() {
    if (_formKey.currentState!.validate()==false){
      return; }
    double firstNum = double.tryParse(_firstNumTecController.text) ?? 0;
    double secondNum = double.tryParse(_secondNumTecController.text) ?? 0;

    _result = firstNum * secondNum;
    setState(() {});
  }

  void _onTapDividedButton() {
    if (_formKey.currentState!.validate()==false){
      return; }
    double firstNum = double.tryParse(_firstNumTecController.text) ?? 0;
    double secondNum = double.tryParse(_secondNumTecController.text) ?? 0;

    _result = firstNum / secondNum;
    setState(() {});
  }

  void _onTapModulusButton() {
    if (_formKey.currentState!.validate()==false){
      return; }
    double firstNum = double.tryParse(_firstNumTecController.text) ?? 0;
    double secondNum = double.tryParse(_secondNumTecController.text) ?? 0;

    _result = firstNum % secondNum;
    setState(() {});
  }
  bool _validateTextFields(){
    if (_firstNumTecController.text.isEmpty){
      return false;
    }
    if (_secondNumTecController.text.isEmpty){
      return false;
    }
    return true;
  }
  @override
  void dispose() {
    _firstNumTecController.dispose();
    _secondNumTecController.dispose();
    super.dispose();
  }

}
