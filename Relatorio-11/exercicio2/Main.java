package exercicio2;

public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Cafe coado", 8.0);
        ItemDoCardapio curry = new ItemDoCardapio("Curry da casa", 24.0);
        ComboLeblanc combo = new ComboLeblanc("Combo cafe + curry", 32.0);

        CafeLeblanc leblanc = new CafeLeblanc();
        leblanc.adicionar(cafe);
        leblanc.adicionar(curry);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}
