import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 174, 0)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'MCLAREN F1'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.orange,
                child: const Text(
                  'Entre 1984 e 1993 ocorreram os tempos de ouro na McLaren pelos ótimos resultados obtidos. Porém, durante 1994-1997 a equipe não rendeu o esperado, somente voltando a ser competitiva ao seu verdadeiro nível em 1998, vencendo também o campeonato de 1999.',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: const Text(
                  'Em 2024, o Grupo McLaren anunciou sua venda para o Fundo Soberano do Bahrein, assumindo controle majoritário das ações da equipe da Fórmula 1.[36]A temporada começa um pouco mal para a Mclaren mas logo na sexta corrida, com um carro completamente diferente, Norris ganha seu primeiro GP em toda a sua carreira. O britânico ganhou outras três corridas na temporada, incluindo a última em Abu Dhabi. Os dois pilotos da McLaren totalizaram 21 pódios, incluindo uma dobradinha na Hungria, com Oscar Piastri tendo a primeira vitória de sua carreira nesse mesmo dia. Com esses resultados, a McLaren somou pontos e conquistou seu nono título no mundial de construtores, quebrando um jejum que perdurava desde 1998. A equipe também brigou pelo campeonato de pilotos, mas Norris acabou ficando com o vice-campeonato, enquanto Piastri foi o quarto.[',
                  style: TextStyle(color: Colors.orange, fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 255, 145, 0),
                child: const Text(
                  'O futuro da McLaren F1 é empolgante, marcado pela busca contínua de excelência em tecnologia, sustentabilidade e performance, tanto nas pistas quanto no desenvolvimento de seus carros de rua.',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
