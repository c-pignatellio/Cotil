class Doguinho{
  String nome = "";
  String raca = "";
  int idade = 0;
  String imagem = "";

  Doguinho(this.nome, this.raca, this.idade, this.imagem);
 
 String get getImagem => this.imagem;

 set setImagem(String imagem) => this.imagem = imagem;

 String get getNome => this.nome;

 set setNome(String nome) => this.nome = nome;

  get getRaca => this.raca;

 set setRaca( raca) => this.raca = raca;

  get getIdade => this.idade;

 set setIdade( idade) => this.idade = idade;


}