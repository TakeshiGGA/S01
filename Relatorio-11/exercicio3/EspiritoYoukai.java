package exercicio3;

public class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " aparece do nada e sai correndo atras de quem entrou no lugar");
    }
}
