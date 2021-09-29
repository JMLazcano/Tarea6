// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:special_counter/colores_rgb.dart';
import 'package:special_counter/counters.dart';



class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador v2.0"),
      ),
      body: ListView(
        children: [
          Consumer2<Colores_rgb, Counters>(
            builder: (context, colores_n, counter, child){
              return Container(
                height: MediaQuery.of(context).size.height * 0.70,
                margin: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: colores_n.actualColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(child: Text("${counter.counter_n}", style: TextStyle(fontSize: 72, color: (flag==true)?Colors.white:Colors.black)))
              );
            }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "BLACK",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.black87,
                onPressed: () {
                  flag = true;
                  SnackBar message = SnackBar(
                                          content: Text("Cambiando a color negro...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.black,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                  context.read<Colores_rgb>().changeBlack();
                },
              ),
              MaterialButton(
                child: Text(
                  "RED",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.red,
                onPressed: () {
                  flag = true;
                  SnackBar message = SnackBar(
                                          content: Text("Cambiando a color rojo...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.red,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                  context.read<Colores_rgb>().changeRed();
                },
              ),
              MaterialButton(
                child: Text(
                  "BLUE",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.blue,
                onPressed: () {
                  flag = true;
                  SnackBar message = SnackBar(
                                          content: Text("Cambiando a color azul...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.blue,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                  context.read<Colores_rgb>().changeBlue();
                },
              ),
              MaterialButton(
                child: Text(
                  "GREEN",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.green,
                onPressed: () {
                  flag = true;
                  SnackBar message = SnackBar(
                                          content: Text("Cambiando a color verde...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.green,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                  context.read<Colores_rgb>().changeGreen();
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Sumar 1 cuenta",
                  icon: Icon(Icons.add),
                  color: Colors.grey[200],
                  onPressed: (){
                    context.read<Counters>().increment();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Restar 1 cuenta",
                  icon: Icon(Icons.remove),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<Counters>().decrement();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Reiniciar cuenta",
                  icon: Icon(Icons.restart_alt),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<Counters>().restart();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
