
%pointer
%option noyywrap

 /* ── Sección de definiciones ERX ─────────────────────────────────────── */

digitoHexa      [0-9a-fA-F]

 /* TODO 1 — Definir 'digito' */
digito          [0-9]

 /* TODO 2 — Definir 'letra' */
letra           [a-zA-Z_]

 /* TODO 3 — Definir 'identificador' */
identificador   {letra}({letra}|{digito})*

%%

 /* ── Reglas usando las definiciones ─────────────────────────────────── */

 /* Regla ya dada como ejemplo */
0[xX]{digitoHexa}+  { printf("constante hexadecimal de longitud %d: %s\n", yyleng, yytext); }

 /* TODO 4 — Regla para constante decimal */
[1-9]{digito}* { printf("constante decimal de longitud %d: %s\n", yyleng, yytext); }

 /* TODO 5 — Regla para identificador */
{identificador} { printf("identificador de longitud %d: %s\n", yyleng, yytext); }

[ \t\n]     { }
.           { printf("caracter no reconocido: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}