package exercicio1;

public class Main {
    public static void main(String[] args) {
        Morador howl = new Mago("Howl", "virar passaro");
        Morador calcifer = new DemonioDoFogo("Calcifer");

        howl.apresentar();
        calcifer.apresentar();

        // Morador sophie = new Morador("Sophie");
        // nao compila porque Morador e abstrata, entao nao da pra criar objeto dela
    }
}
