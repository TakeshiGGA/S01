package exercicio3;

public class Main {
    public static void main(String[] args) {
        Alienigena serpo = new Alienigena("Serpo");
        EspiritoYoukai vovo = new EspiritoYoukai("Vovo Turbo");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Hospital abandonado", serpo);
        mapa.registrar("Tunel", vovo);

        mapa.investigar("Hospital abandonado");
        mapa.investigar("Tunel");
        mapa.investigar("Escola");
    }
}
