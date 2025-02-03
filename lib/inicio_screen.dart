import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InicioPage(),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242424),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Curse',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF72FDFD),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'On',
                style: TextStyle(
                  color: Color(0xFF03A1B6),
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 20, // Redução do tamanho do Avatar
            child: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Aqui você encontra tudo que precisa e tem acesso às suas compras.",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(height: 20),
              const Text(
                "Minhas compras",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
            
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCard(
                      context,
                      'assets/imagens/copilot_image_1734722615984.jpeg',
                      'Programação Simplificada',
                    ),
                    const SizedBox(width: 10),
                    _buildCard(
                      context,
                      'assets/imagens/copilot_image_1734722505992.jpeg',
                      'Liberdade Financeira',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Produtos que você pode amar!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildSuggestionCard(
                      'assets/imagens/images.jpeg',
                      'Violão do básico ao avançado',
                    ),
                    const SizedBox(width: 10),
                    _buildSuggestionCard(
                      'assets/imagens/vinho.jpeg',
                      'Escolha o melhor vinho',
                    ),
                    const SizedBox(width: 10),
                    _buildSuggestionCard(
                      'assets/imagens/images.jpeg',
                      'Violão do básico ao avançado',
                    ),
                    const SizedBox(width: 10),
                    _buildSuggestionCard(
                      'assets/imagens/vinho.jpeg',
                      'Degustação de vinho',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String imagePath, String title) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          // Simulação de uma imagem, pois você não quer widgets de imagem
          Container(
            height: 200,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF72FDFD)),
                        ),
                        child: const Text(
                          'Detalhes',
                          style: TextStyle(
                            color: Color(0xFF72FDFD),
                            fontSize: 12, // Tamanho do texto do botão
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF72FDFD),
                          foregroundColor: const Color(0xFF03A1B6),
                        ),
                        child: const Text(
                          'Acessar',
                          style: TextStyle(
                            fontSize: 14, // Tamanho do texto do botão
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionCard(String imagePath, String title) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          // Simulação de uma imagem, pois você não quer widgets de imagem
          Container(
            height: 200,
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
