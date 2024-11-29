public class DisplacementCalculator {

    /**
     * calculated displacement
     * @param x0 initial position
     * @param v  speed
     * @param a  acceleration
     * @param t  time
     * @return displacement
     */
    public static double calculateDisplacement(double x0, double v, double a, double t) {
        return x0 + v * t + 0.5 * a * Math.pow(t, 2);
    }

    public static void main(String[] args) {
        // Example Input
        double x0 = 0;    // initial position
        double v = 10;    // speed (m/s)
        double a = 2;     // acceleration (m/s²)
        double t = 5;     // time (s)

        // call function to calculate displacement
        double displacement = calculateDisplacement(x0, v, a, t);

        // output result
        System.out.println("displacement: " + displacement + " m");
    }
}



import javax.swing.*;
        import java.awt.*;
        import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class DisplacementCalculatorGUI {

    public static void main(String[] args) {

        JFrame frame = new JFrame("displacement calculator");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(400, 300);
        frame.setLayout(new GridLayout(6, 2, 10, 10));


        JLabel x0Label = new JLabel("initial position (x0):");
        JTextField x0Field = new JTextField();
        JLabel vLabel = new JLabel("speed (v):");
        JTextField vField = new JTextField();
        JLabel aLabel = new JLabel("acceleration (a):");
        JTextField aField = new JTextField();
        JLabel tLabel = new JLabel("time (t):");
        JTextField tField = new JTextField();

        // Create result display box
        JLabel resultLabel = new JLabel("Outcome:");
        JTextField resultField = new JTextField();
        resultField.setEditable(false);

        // Create Calculation Button
        JButton calculateButton = new JButton("Calculation");

        // Add Event Listener
        calculateButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    // Get user input
                    double x0 = Double.parseDouble(x0Field.getText());
                    double v = Double.parseDouble(vField.getText());
                    double a = Double.parseDouble(aField.getText());
                    double t = Double.parseDouble(tField.getText());

                    // call computational function
                    double displacement = calculateDisplacement(x0, v, a, t);

                    // Show Results
                    resultField.setText(displacement + " m");
                } catch (NumberFormatException ex) {
                    // Enter the error message
                    JOptionPane.showMessageDialog(frame, "Please enter a valid number！", "error in input", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        // Add components to the window
        frame.add(x0Label);
        frame.add(x0Field);
        frame.add(vLabel);
        frame.add(vField);
        frame.add(aLabel);
        frame.add(aField);
        frame.add(tLabel);
        frame.add(tField);
        frame.add(calculateButton);
        frame.add(resultLabel);
        frame.add(resultField);

        // display window
        frame.setVisible(true);
    }

    /**
     * calculated displacement
     * @param x0 initial position
     * @param v speed
     * @param a acceleration
     * @param t time
     * @return displacement
     */
    private static double calculateDisplacement(double x0, double v, double a, double t) {
        return x0 + v * t + 0.5 * a * Math.pow(t, 2);
    }
}
