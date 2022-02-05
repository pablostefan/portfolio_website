import 'dart:html' as html;
import 'package:flutter/material.dart';

const myBlue = Color.fromARGB(255, 136, 255, 245);
const myGreen = Color.fromARGB(255, 114, 255, 168);
const myYellow = Color.fromARGB(255, 255, 212, 131);
const myPink = Color.fromARGB(255, 255, 184, 184);
const myYellowButton = Color.fromRGBO(241, 201, 107, 1);
const duration = Duration(milliseconds: 400);
const pageDuration = Duration(seconds: 1);
// BoxShadowns
final boxShadown = BoxShadow(
  offset: const Offset(30, 20),
  blurRadius: 30,
  color: Colors.black.withOpacity(0.2),
);

final boxShadownWork = BoxShadow(
  offset: const Offset(30, 20),
  blurRadius: 30,
  color: Colors.black.withOpacity(0.2),
);

final boxShadownService = BoxShadow(
  offset: const Offset(25, 10),
  blurRadius: 30,
  color: Colors.black.withOpacity(0.3),
);
final boxShadownCertificate = BoxShadow(
  offset: const Offset(15, 10),
  blurRadius: 10,
  color: Colors.black.withOpacity(0.3),
);

// Open Link
void htlmOpenLinkedin() {
  String url = 'https://www.linkedin.com/in/pablo-stefan-a25280100/';
  html.window.open(url, 'linkedin');
}

void htlmOpenCurriculo() {
  String url =
      'https://drive.google.com/file/d/1q1fLWo3hQVI2uvrfD-o5apAo6p8FBl5u/view?usp=sharing';
  html.window.open(url, 'curriculo');
}

void htlmOpenWhatsApp() {
  String url =
      'https://wa.me/+5584996201300?text=Olá, Eu vi seu portifólio e gostaria de saber mais!';
  html.window.open(url, 'WhatsApp');
}

void htlmOpenEmail() {
  String url = "mailto:pablo.stefan744@gmail.com?Subject=Contratar";
  html.window.open(url, 'Email');
}

void htlmOpenGitHub() {
  String url = 'https://github.com/pablostefan';
  html.window.open(url, 'GitHub');
}

void htlmOpenProject(String link) {
  html.window.open(link, 'Projeto Recente');
}

// Fonsts Sizes
double fontSizeMean(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .04;
}

double fontSizeLittle(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .03;
}

double fontSizeBig(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .07;
}

double fontSizeTitle(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .2;
}

double fastontSizeTitle(Size size) {
  return size.width * .015;
}

// Image size
double myButtonImage(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .07;
}

double imageWorkCardHihg(Size size) {
  if (size.width < 425 && size.width > 390) {
    return (size.height * size.width) / (size.height + size.width) * .28;
  }
  return (size.height * size.width) / (size.height + size.width) * .35;
}

double imageWorkCardWidth(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .6;
}

double myIconSize(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .3;
}

// About Section Contants
// Image
double aboutImage(Size size) {
  return size.height * size.width * .00017;
}

// Signature
double aboutSignatureFont(Size size) {
  return size.height * size.width * .00004;
}

double aboutSignatureImage(Size size) {
  return size.height * size.width * .00013;
}

// List Service Card
double serciCardMargin(Size size) {
  return size.width * .01;
}

double imageServiceCard(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .3;
}

// Recent Work Section
// Hire me Card
double hireMeCard(Size size) {
  if (size.width <= 1000) {
    return size.width * .56;
  } else {
    return size.width * .45;
  }
}

double hireMeImage(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .1;
}

double hireMePadding(Size size) {
  return size.height * .02;
}

double hireMeDivider(Size size) {
  return size.height * .1;
}

bool removeText(Size size) {
  if (size.width <= 450) {
    return false;
  } else {
    return true;
  }
}

double myLittlePadding(Size size) {
  return size.height * size.width * .000023;
}

double personImage(Size size) {
  return (size.height * size.width) / (size.height + size.width) * 1.1;
}

double serviceBox(Size size) {
  return size.height * 0.12;
}

double buttonPadding(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .03;
}

// Contac Section
double contacBoxW(Size size) {
  return (size.height * size.width) / (size.height + size.width) * 1.5;
}

double contacBoxH(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .7;
}

double contacBox(Size size) {
  return (size.height * size.width) / (size.height + size.width);
}

double contactImage(Size size) {
  return (size.height * size.width) / (size.height + size.width) * .5;
}

double contactIcon(Size size) {
  return (size.height * size.width) / (size.height + size.width)*0.15;
}

//Texts
const String aboutMeText =
    """Sou atleta de judô desde os sete anos de idade, no esporte aprendi a visualizar a vitória e procurar os caminhos para conquistá-la, esforço, trabalho duro e constância foram os principais meios que encontrei. Tive a honra de representar meu estado em varias competições nacionais, chegando a receber um convite de treinar com o professor Paulo Duarte treinador do medalhista olímpico Leandro Guilheiro.

Na faculdade conquisteis o cargo de monitor de cálculo I e III graças ao meu rendimento no semestre anterior, chamando atenção de meu professor, quem me convidou para o cargo. Responsável por ajudar os outros alunos no processo de aprendizagem, dando aulas de resoluções de exercícios, atendimentos de duvidas e resoluções de listas para formulação de um gabarito.

Fui bolsista voluntário em vários projetos de extensão, como por exemplo, o projeto URA (um robô por aluno) e WAVE 3D (uso da tecnologia de prototipagem rápida no auxilio a construção de embarcação utilizada pelo comunidade de jangadeiros de ponta negra), ambos tinham como objetivo ajudar e auxiliar as pessoas com meus conhecimentos e trabalho, no projeto URA ensinam alunos de colégios públicos ,prototipagem, programação e outros conhecimentos de tecnologia; no WAVE 3D levamos melhorias e segurança no trabalho dos jangadeiros de Natal.

Tive várias experiências em programação e prototipagem no projeto URA, onde fiquei responsável pela confecção e manutenção do material usado nas aulas do projeto. Em minha atuação como gestor de projeto no WAVE 3D, fiquei responsável pela parte de software, aplicando metodologias ágeis para o melhor funcionamento e qualidade dos trabalhos, atuei com Arduino, linguagens C++ e Python, GPS, PIC, confecção de placas de circuitos impressos e documentação de todos os trabalhos realizados.""";

const String uiUxDesing =
    """UX: Significa User Experience, isto é, experiência do Usuário, trata-se de um conjunto de elementos e fatores relacionados à interação que o usuário faz com o produto ou serviço. User Experience contempla desde o interesse, as pesquisas e a compra de um produto, pelo usuário. Dessa forma, o principal papel do UX Designer é se preocupar com cada etapa na qual o usuário interage com o produto ou serviço, fazendo com que a interação ocorra da melhor forma possível. 

O objetivo do UX Design é auxiliar o seu usuário a realizar ações em seu site ou produto. Nesse sentido, sua função é identificar o que o seu cliente valoriza, precisa e deseja na hora de comprar e utilizar certo produto/serviço. Para isso, os UX Designers fazem perguntas e entrevistas, observam pessoas, criam protótipos e fazem testes para validar (ou não) suas propostas de negócios. Em seguida, o UX Design remove todo atrito para que o usuário tenha sucesso em seu projeto e fideliza-lo, por meio da sua interface. As pessoas podem ser atraídas ao site ou aplicativo devido às ações que podem realizar. 

UI: Significa User Interface, em português, Interface do Usuário, nesse sentido, ela representa tudo o que é utilizado na interação com um produto, sendo a intermediária visual ou não, entre o usuário e dispositivo. Dessa forma, o UI Designer é responsável principalmente pela criação de interfaces funcionais, as quais permitem que usuário navegue intuitivamente por toda sua jornada. UI Design é mais focado em interfaces. Ainda que não seja limitado às interfaces gráficas de computadores e dispositivos móveis.
""";
const String python =
    """Python é uma linguagem de programação poderosa que pode ser usada para desenvolvimento da web, sistemas operacionais, IA, aprendizado de máquina, computação numérica, aplicativos móveis e desenvolvimento de jogos. O recente aumento no uso do Python deve-se em grande parte à sua sintaxe simples e a facilidade de seu uso, o que a torna relativamente fácil de aprender, mesmo por iniciantes e não programadores.

A robusta biblioteca padrão do Python o torna perfeito para construir sistemas operacionais inteiros. O design orientado a objetos da linguagem garante que grandes projetos sejam facilmente gerenciados. Python é compatível com a maioria dos sistemas operacionais e pode ser facilmente usado para construir aplicativos nativos para computadores Windows e Mac.

Python oferece várias opções para projetos complexos de desenvolvimento para web. HTML e JavaScript são as principais linguagens usadas para construir o front-end de um aplicativo. Mas estruturas da web baseadas em Python como Django, Pyramid e Flask são usadas para lidar com back-end ou funcionalidade do lado do servidor de sites e serviços como Spotify, Reddit e Mozilla. 

O ecossistema Python oferece inúmeras ferramentas e bibliotecas que ajudam cientistas e pesquisadores em computação científica e numérica. SciPy é um conjunto de pacotes para matemática, ciências e engenharia Pandas é uma biblioteca usada para análise de dados e modelagem IPython é um shell interativo forte que fornece edição e gravação sem complicações de uma sessão de trabalho e ajuda na visualização e computação paralela. FreeCAD e Abaqus são aplicativos numéricos e científicos da vida real construídos com Python.
""";

const String sql =
    """SQL é uma linguagem padrão para trabalhar com bancos de dados relacionais. Ela é uma linguagem declarativa e que não necessita de profundos conhecimentos de programação para que alguém possa começar a escrever queries, as consultas e pedidos, que trazem resultados de acordo com o que você está buscando. SQL significa Standard Query Language, literalmente a linguagem padrão para realizar queries.

A linguagem SQL é utilizada de maneira relativamente parecida entre os principais bancos de dados relacionais do mercado: Oracle, MySQL, MariaDB, PostgreSQL, Microsoft SQL Server, entre muitos outros. Cada um tem suas características, sendo o MySQL e o PostgreSQL extremamente populares por possuírem versões gratuitas e de código aberto.

Um banco de dados é uma coleção organizada de informações ou dados, estruturadas, armazenadas eletronicamente em um sistema de computador. Um banco de dados é controlado por um sistema de gerenciamento de banco de dados (DBMS). Os dados e o DBMS, juntamente com os aplicativos associados a eles, são chamados de sistema de banco de dados, geralmente abreviados para apenas banco de dados.

Os dados nos tipos mais comuns de bancos de dados em operação atualmente são modelados em linhas e colunas em uma série de tabelas para tornar o processamento e a consulta de dados eficientes. Os dados podem ser facilmente acessados, gerenciados, modificados, atualizados, controlados e organizados. A maioria dos bancos de dados usa a linguagem de consulta estruturada (SQL) para escrever e consultar dados.
""";

const String flutter =
    """Criado pelo Google, o Flutter é um Framework para o desenvolvimento de aplicativos mobile para Android, iOS e Web, muito utilizado atualmente no mercado, inclusive é a linguagem utilizada por esse site. Flutter possui como linguagem base o Dart, grandes empresas estão apostando no Flutter, como: Google, Alibaba, Groupon, Nubank, Google entre outras. Um dos grandes motivos para esta aposta é justamente a forma com que o Flutter funciona para criação de aplicações.

Ao criar um aplicativo com o Flutter, seu código acaba sendo compilado para a linguagem base do dispositivo, ou seja, as aplicações são realmente nativas e por isso conseguem acessar recursos do dispositivo sem ajuda de terceiros e com o desempenho maior. Diversas são as características do Flutter. Dentre elas podemos citar:

Multiplataforma: Podemos desenvolver aplicações com Flutter em qualquer sistema operacional (Windows, Linux e MacOS);

Criação de aplicações nativas a partir de um único código base - Com o Flutter é possível desenvolvermos aplicações nativas para Android e iOS;

Acesso direto aos recursos nativos do sistema: Uma aplicação criada com Flutter possui acesso nativo aos recursos do dispositivo (câmera, wifi, memória);

Maior desempenho: As aplicações criadas com Flutter possuem um maior desempenho quando comparadas ao React Native, por exemplo, pois todo seu código-fonte é transformado em código nativo.
""";

const String aboutTextDev =
    """Desenvolvedor Full Stack apaixonado pela profissão. Atualmente desenvolvendo aplicativos móveis e websites, em Flutter (framework multiplataforma da Google) e Firebase (plataforma desenvolvida pelo Google para a criação de aplicativos móveis e da web), poderosas tecnologias multiplataforma da Google.""";

const String aboutTextLife =
    """Formando em Ciências e Tecnologia, durante a faculdade me apaixonei pela área de softwares. Atleta de Judôs desde os sete anos de idade, esporte que ajudou muito na minha formação pessoal, que tem a tradução literal, caminho da suavidade, significa não ir pelo caminho mais fácil e sim deixar o caminho mais suave, com treino e esforço.""";
