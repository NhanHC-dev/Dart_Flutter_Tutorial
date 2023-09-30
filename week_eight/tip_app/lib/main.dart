import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late double totalBill = 0;
  late double tipPercentage = 0;
  late double tipBill = 0;
  late int billSplit = 1;
  late double billEach = 0;
  late double finalBill = 0;

  // Controllers for totalBill and billSplit input fields
  final totalBillController = TextEditingController();
  final billSplitController = TextEditingController();

  RegExp regex = RegExp(r'^[-+]?\d+(\.\d+)?$');
  TextStyle tx = const TextStyle(
      color: Colors.lightGreen, fontSize: 20, fontWeight: FontWeight.bold);

  final _mesKey = GlobalKey<ScaffoldMessengerState>();
  final _formKey = GlobalKey<FormState>();

  int _selectedIndex = 0;
  final List<bool> _pages = List.generate(3, (_) => false);

  @override
  void dispose() {
    totalBillController.dispose();
    billSplitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _mesKey,
      home: Scaffold(
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Enter bill total",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "\$",
                    ),
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        controller: totalBillController,
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value == null || !regex.hasMatch(value)) {
                            return "Please enter number";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                  width: 210,
                  child: Center(
                    child: ToggleButtons(
                      disabledColor: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(4),
                      selectedColor: Colors.blue[900],
                      isSelected: _pages,
                      constraints:
                          const BoxConstraints.expand(width: 60, height: 50),
                      onPressed: (int index) {
                        setState(() {
                          _pages[(index + 1) % 3] = false;
                          _pages[(index + 2) % 3] = false;
                          _pages[index] = !_pages[index];
                          _selectedIndex = index;
                          tipPercentage = (_selectedIndex == 0)
                              ? 0.1
                              : (_selectedIndex == 1)
                                  ? 0.15
                                  : 0.2;
                        });
                      },
                      children: const [
                        Text("10%"),
                        Text("15%"),
                        Text("20%"),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "Split: ",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (billSplit > 0) {
                            billSplit--;
                            billSplitController.text = billSplit.toString();
                          }
                        });
                      },
                      child: const Text("-"),
                    ),
                    SizedBox(
                      width: 70,
                      child: TextFormField(
                        controller: billSplitController,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: "1",
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          billSplit++;
                          billSplitController.text = billSplit.toString();
                        });
                      },
                      child: const Text("+"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                  width: 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        double totalBill =
                            double.parse(totalBillController.text);
                        int billSplit = int.parse(billSplitController.text);
                        tipBill = (totalBill * tipPercentage) / billSplit;
                        billEach = totalBill / billSplit;
                        finalBill = billEach + tipBill;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 35),
                  ),
                  child: const Text("PAY"),
                ),
                SizedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ("Tip: \$" + billEach.toStringAsFixed(2)),
                          style: tx,
                        ),
                        Text(
                          ("Individual Bill: \$" + tipBill.toStringAsFixed(2)),
                          style: tx,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                                'Total Payment: \$' +
                                    finalBill.toStringAsFixed(2),
                                style: tx),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
