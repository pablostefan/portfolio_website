class RecentProject {
  final String image, category, title, link;
  final int id;

  RecentProject({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
    required this.link,
  });
}

// Demo List of my works
List<RecentProject> recentProject = [
  RecentProject(
    id: 1,
    title: "URA - Um robô por aluno",
    category: "Aduino",
    image: "images/ura.png",
    link: 'https://natalnet.github.io/ura/',
  ),
  RecentProject(
    id: 2,
    title: "WAVE3D",
    category: "Eletrônica",
    image: "images/barco.png",
    link:
        'https://sigaa.ufrn.br/sigaa/link/public/extensao/visualizacaoAcaoExtensao/91807137',
  ),
  RecentProject(
    id: 3,
    title: "CDA bot",
    category: "Python e SQL",
    image: "images/bot.png",
    link: 'https://t.me/Challenge_CDA_bot',
  ),
  RecentProject(
    id: 4,
    title: "Primeiro portfólio",
    category: "Flutter",
    image: "images/portfolio.png",
    link: 'https://pablo-portifolio-22d60.web.app/#/',
  ),
  RecentProject(
    id: 5,
    title: "Portfólio atual",
    category: "Flutter",
    image: "images/pfatual.png",
    link: 'https://github.com/pablostefan/Flutter/tree/main/portfolio_website',
  ),
];
