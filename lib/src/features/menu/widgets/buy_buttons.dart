import 'package:flutter/material.dart';

class BuyButtonsWidget extends StatefulWidget {
  final double cost;
  const BuyButtonsWidget({super.key, required this.cost});

  @override
  State<BuyButtonsWidget> createState() => _BuyButtonsWidgetState();
}

class _BuyButtonsWidgetState extends State<BuyButtonsWidget> {
  int sum = 1;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return isActive == false
        ? TextButton(
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll<Color>(Colors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ))),
            onPressed: () {
              setState(() {
                isActive = true;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                '${widget.cost} руб',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ))
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(horizontal: 5)),
                    ),
                    onPressed: () {
                      setState(() {
                        if (sum > 1) {
                          sum -= 1;
                        } else {
                          isActive = false;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 16,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  width: 43,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: Text(
                          '$sum',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                ),
              ),
              SizedBox(
                width: 30,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(horizontal: 5)),
                    ),
                    onPressed: () {
                      setState(() {
                        sum < 9 ? sum += 1 : sum;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      size: 16,
                      color: Colors.white,
                    )),
              ),
            ],
          );
  }
}
