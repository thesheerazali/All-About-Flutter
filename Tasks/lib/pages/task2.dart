import 'package:flutter/material.dart';

class TaskTwo extends StatefulWidget {
  const TaskTwo({super.key});

  @override
  State<TaskTwo> createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  List<String> loanDetailTitle = [
    'Loan Type',
    'Total Prize',
    'Residual value',
    'Down Payment',
    'Finance Account',
    'Loan Duration',
    'interest rate',
    'Mileage (KM)',
    'Monthly Payment',
    'Total repayble',
    'Prpcessing Fee',
    'VAT',
  ];
  List<String> loanDetailTraling = [
    'AUTO LOAN - GFV',
    'AED 70,895.00',
    'AED 52,544.00',
    'AED 14,179.00',
    'AED 350,000.00',
    '48 Months',
    '5.49',
    '27086 KM',
    'AED 12,895.54',
    'AED 669,753.92',
    'AED 5.00',
    '5%',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Review details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                    child: ExpansionTile(
                  title: const Text("Loan Details"),
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: loanDetailTitle.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(loanDetailTitle[index].toString()),
                            trailing: Text(loanDetailTraling[index]),
                          ),
                        );
                      },
                    )
                  ],
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
