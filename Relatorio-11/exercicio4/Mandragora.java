package exercicio4;

public class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "corta a raiz em rodelas e frita na manteiga";
    }
}
