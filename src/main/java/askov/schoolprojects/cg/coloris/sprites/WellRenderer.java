package askov.schoolprojects.cg.coloris.sprites;

import javafx.scene.paint.Color;

/**
 * Classe WellRenderer responsável apenas pela renderização visual do Well.
 */
public class WellRenderer extends Frame {
    private static final Color BACKGROUND_COLOR = Color.web("0x0000DD", 0.5);
    private static final int NUM_SEGMENTS = 55;
    private static final double RELATIVE_WELL_HEIGHT = 1.4;

    public WellRenderer(SquareMatrix squareMatrix, Block fallingBlock, double squareMatrixWidth, double squareMatrixHeight) {
        super(squareMatrixWidth, RELATIVE_WELL_HEIGHT * squareMatrixHeight, NUM_SEGMENTS, BACKGROUND_COLOR);

        super.getChildren().addAll(squareMatrix, fallingBlock);
    }
}
