package luis.torres;

import luis.torres.view.EquipoView;
import javax.swing.*;

public class App {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new EquipoView());
    }
}
