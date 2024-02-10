import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controller/ticTacToe_Controller.dart';
import 'package:tic_tac_toe/widget/awesomDialog.dart';
import 'package:tic_tac_toe/widget/contain.dart';

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF284b63),
        body: GetBuilder(
            init: TicTacToeController(),
            builder: (controller) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                            width: double.infinity,
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "X",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                              controller.scorePlayerX
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "O",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                              controller.scorePlayerO
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Turn of player ${controller.player}",
                                  style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Contain(controller.game[0][0], () {
                                    controller.setValue(0, 0);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Contain(controller.game[0][1], () {
                                    controller.setValue(0, 1);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Contain(controller.game[0][2], () {
                                    controller.setValue(0, 2);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Contain(controller.game[1][0], () {
                                    controller.setValue(1, 0);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Contain(controller.game[1][1], () {
                                    controller.setValue(1, 1);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Contain(controller.game[1][2], () {
                                    controller.setValue(1, 2);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Contain(controller.game[2][0], () {
                                    controller.setValue(2, 0);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Contain(controller.game[2][1], () {
                                    controller.setValue(2, 1);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Contain(controller.game[2][2], () {
                                    controller.setValue(2, 2);
                                    if (controller.winner != ' ') {
                                      awesomeDialog(context, controller.winner,
                                          () {
                                        controller.resetGame();
                                        controller.winner = ' ';
                                      });
                                    }
                                  }),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                            child: Container(
                          width: 65,
                          height: 65,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {
                                controller.resetGame();
                              },
                              icon: const Icon(
                                Icons.restart_alt_outlined,
                                size: 40,
                                color: Colors.black,
                              )),
                        )),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.newGame();
                        },
                        child: const Text(
                          "new game",
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
