package exercicio3;

import java.util.HashMap;

public class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        System.out.println("Investigando: " + local);
        Sobrenatural ser = avistamentos.get(local);

        if (ser == null) {
            System.out.println("Nada por aqui, o local esta tranquilo.");
        } else {
            ser.manifestar();
        }
    }
}
