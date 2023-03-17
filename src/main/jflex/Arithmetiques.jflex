/* --------------------------Section de Code Utilisateur---------------------*/
package fr.usmb.m1isc.compilation.simple;
import java_cup.runtime.Symbol;

%%

/* -----------------Section des Declarations et Options----------------------*/
// nom de la class a generer
%class ArithmetiquesLexer
%unicode
%line   // numerotation des lignes
%column // numerotation caracteres par ligne

// utilisation avec CUP
// nom de la classe generee par CUP qui contient les symboles terminaux
%cupsym ArithmetiquesParserSym
// generation analyser lexical pour CUP
%cup

// code a ajouter dans la classe produite
%{

%}

// Definitions regulieres
nombre = [0-9]+
espace = \s
plus = "+"
moins = "-"
fois = "*"
div = "/"
fin = ";"

%%

// Regles lexicales

{nombre} { return new Symbol(ArithmetiquesParserSym.NUMBER); }
{espace}+ { /* ignore */ }
{plus} { return new Symbol(ArithmetiquesParserSym.PLUS); }
{moins} { return new Symbol(ArithmetiquesParserSym.MINUS); }
{fois} { return new Symbol(ArithmetiquesParserSym.TIMES); }
{div} { return new Symbol(ArithmetiquesParserSym.DIVIDE); }
{fin} { return new Symbol(ArithmetiquesParserSym.END); }
. {return new Symbol(ArithmetiquesParserSym.ERROR); }