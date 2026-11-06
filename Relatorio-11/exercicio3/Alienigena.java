package exercicio3;

public class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " desce de um disco voador e tenta abduzir quem esta investigando");
    }
}
