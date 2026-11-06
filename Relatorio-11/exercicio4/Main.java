package exercicio4;

public class Main {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime da entrada");
        Mandragora mandragora = new Mandragora("Mandragora gritadeira");

        Cozinheiro senshi = new Cozinheiro("Senshi", "ferro");
        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);

        senshi.servirBanquete();

        // Composicao: a Panela e criada dentro do construtor do Cozinheiro, ninguem passa ela pronta.
        // Ela nasce junto com o cozinheiro e so existe por causa dele, se ele sumir a panela vai junto.
        // Agregacao: o Slime e a Mandragora foram criados aqui no main antes do cozinheiro existir,
        // e depois so foram entregues pra ele com adicionarIngrediente(). O cozinheiro guarda a
        // referencia deles na lista, mas os monstros existem por conta propria.
    }
}
