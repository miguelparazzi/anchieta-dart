// 1. Soma
num somar(num a, num b) {
  return a + b;
}

// 2. Par
bool isPar(int n) {
  return n % 2 == 0;
}

// 3. Maior de idade
bool podeEntrar(int idade) {
  return idade >= 18;
}

double converter(double c) {
    return (c * 9.0 / 5.0) + 32.0;
}

String saudar(String nome) {
  return "Olá, " + nome + "!";
}

double calcularMedia(List<double> notas) {
  // Se a lista estiver vazia, retornamos 0.0 como o teste espera
  if (notas.isEmpty) {
    return 0.0;
  }

  // Somamos todos os valores e dividimos pelo tamanho da lista
  double soma = 0.0;
  for (double nota in notas) {
    soma += nota;
  }

  return soma / notas.length;
}

List<int> buscarMaiores(List<int> numeros, int corte) {
  return numeros.where((n) => n > corte).toList();
}

int tamanhoTexto(String? texto) {
  return texto?.length ?? 0;
}

double fecharPedido(List<double> precos) {
  double total = precos.fold(0.0, (a, b) => a + b);
  return total > 500 ? total * 0.85 : total * 0.95;
}

bool contemNome(List<String> nomes, String busca) {
  // Padronizamos a busca para minúsculas
  String buscaLower = busca.toLowerCase();
  
  // O método .any() retorna true assim que encontra o primeiro item que satisfaz a condição
  return nomes.any((nome) => nome.toLowerCase() == buscaLower);
}