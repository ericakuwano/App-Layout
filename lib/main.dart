import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 240, 220, 105)),
        useMaterial3: true,
      ),
      home: const PaginaInicial(titulo: 'Programa Layout'),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key, required this.titulo});

  final String titulo;

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                 // color: const Color.fromARGB(255, 198, 113, 255),
                //  child: const Text('Layout Superior')
                  ),
            ),
           Expanded(
            flex: 7,
              child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
              child: Container(
                //lignment: Alignment.center,
                  //color: const Color.fromARGB(255, 149, 193, 243),
                  //child: const Text('Primeira linha')
                  ),
            ),
                Expanded(
                  flex: 2,
              child: Container(
                alignment: Alignment.center,
                  decoration: BoxDecoration( 
                    color: const Color.fromARGB(255, 203, 154, 212),
                     borderRadius: BorderRadius.circular(20),
                     border: Border.all(
                      color: const Color.fromARGB(255, 154, 214, 159),
                       width: 2,
                     ),
                     boxShadow: const [
                      BoxShadow( 
                        color: Color.fromARGB(125, 146, 210, 235),
                        blurRadius: 10,
                      offset: Offset(5, 5),
                      ),
                       ],
                        ),
                  child: const Text('Meu Aplicativo')
                  ),
            ),
             Expanded(
              child: Container(
                //alignment: Alignment.center,
                 // color: const Color.fromARGB(255, 149, 193, 243),
                 // child: const Text('Terceira Linha')
                  ),
            ),
              ],
            )
            ),
             Expanded(
              flex: 2,
              child: Container(
              // alignment: Alignment.center,
                 // color: const Color.fromARGB(255, 130, 132, 240),
                  //child: const Text('Layout Inferior')
                  ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}