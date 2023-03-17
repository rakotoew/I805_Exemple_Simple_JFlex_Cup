package fr.usmb.m1isc.compilation.simple;

import java.io.FileReader;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws Exception {
        /*SimpleLexer lexer;
        if (args.length > 0)
            lexer = new SimpleLexer(new FileReader(args[0]));
        else
            lexer = new SimpleLexer(new InputStreamReader(System.in));
        @SuppressWarnings("deprecation")
        SimpleParser p = new SimpleParser(lexer);
        p.parse();
        */
        ArithmetiquesLexer aLexer;
        if (args.length > 0)
            aLexer = new ArithmetiquesLexer(new FileReader(args[0]));
        else
            aLexer = new ArithmetiquesLexer(new InputStreamReader(System.in));
        @SuppressWarnings("deprecation")
        ArithmetiquesParser aParser = new ArithmetiquesParser(aLexer);
        aParser.parse();


    }
}
