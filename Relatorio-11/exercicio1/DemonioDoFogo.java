package exercicio1;

public class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o " + getNome() + ", o demonio do fogo. Sou eu que faco o castelo andar!");
    }
}
