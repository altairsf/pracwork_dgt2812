import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    //Contrução dos botões
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Colors.blue;

    //Navegação
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.place, 'DESTINOS'),
        _buildButtonColumn(color, Icons.card_travel, 'PACOTES'),
        _buildButtonColumn(color, Icons.phone, 'CONTATO'),
        _buildButtonColumn(color, Icons.info, 'SOBRE NÓS'),
      ],
    );

    return MaterialApp(
      title: 'Explore Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Explore Mundo"),
        ),
        body: ListView(
          children: [
            //Imagem
            Image.asset(
              "images/lake.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

            //Construção da Seção de Título:
            Container(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: const Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red[500],
                  ),
                  const Text('41'),
                ],
              ),
            ),

            //Text
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos do mundo. Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui incluem remo e andar no tobogã no verão.',
                softWrap: true,
              ),
            ),
            
            //ButtonSection
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: buttonSection,
            ),

            //Campo de pesquisa
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Pesquisar",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}