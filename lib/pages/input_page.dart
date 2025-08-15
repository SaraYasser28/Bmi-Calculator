import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/card.dart';
import '../widgets/choice_card.dart';
import '../widgets/number_control.dart';
import '../utils/bmi_calculator.dart';
import 'result_page.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? _gender;
  double _height = 170;
  int _weight = 70;
  int _age = 20;

  late TextEditingController _heightController;

  @override
  void initState() {
    super.initState();
    _heightController = TextEditingController(text: _height.round().toString());
  }

  @override
  void dispose() {
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ChoiceCard(
                      label: 'Male',
                      icon: Icons.male,
                      selected: _gender == Gender.male,
                      onTap: () => setState(() => _gender = Gender.male),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ChoiceCard(
                      label: 'Female',
                      icon: Icons.female,
                      selected: _gender == Gender.female,
                      onTap: () => setState(() => _gender = Gender.female),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              AppCard(
                child: Column(
                  children: [
                    Text('Height', style: _labelStyle(context)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 70,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.displaySmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                            keyboardType: TextInputType.number,
                            controller: _heightController,
                            onTap: () {
                              _heightController.selection = TextSelection(
                                baseOffset: 0,
                                extentOffset: _heightController.text.length,
                              );
                            },
                            onSubmitted: (value) {
                              final parsed = double.tryParse(value);
                              if (parsed != null &&
                                  parsed >= 120 &&
                                  parsed <= 220) {
                                setState(() => _height = parsed);
                              } else {
                                _heightController.text = _height
                                    .round()
                                    .toString();
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 4),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'cm',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: _height,
                      min: 120,
                      max: 220,
                      divisions: 100,
                      onChanged: (v) {
                        setState(() {
                          _height = v;
                          _heightController.text = _height.round().toString();
                        });
                      },
                      inactiveColor: const Color.fromARGB(60, 114, 113, 113),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: AppCard(
                      child: NumberControl(
                        label: 'Weight',
                        value: _weight,
                        unit: 'kg',
                        minValue: 30,
                        maxValue: 200,
                        onValueChanged: (v) => setState(() => _weight = v),
                        onDecrement: () =>
                            setState(() => _weight = max(30, _weight - 1)),
                        onIncrement: () =>
                            setState(() => _weight = min(200, _weight + 1)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: AppCard(
                      child: NumberControl(
                        label: 'Age',
                        value: _age,
                        unit: 'yr',
                        minValue: 10,
                        maxValue: 120,
                        onValueChanged: (v) => setState(() => _age = v),
                        onDecrement: () =>
                            setState(() => _age = max(10, _age - 1)),
                        onIncrement: () =>
                            setState(() => _age = min(120, _age + 1)),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    if (_gender == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please select your gender first!'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                      return;
                    }
                    final bmiValue = calculateBmi(_weight, _height);
                    final (category, message) = classifyBmi(bmiValue);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ResultPage(
                          bmi: bmiValue,
                          category: category,
                          message: message,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _labelStyle(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white70);
}
