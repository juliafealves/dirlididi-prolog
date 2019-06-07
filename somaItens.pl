:-initialization(main).

soma(0, Resultado):- writeln(Resultado).
soma(Quantidade, Resultado):-
    read(Valor),
    Soma is Valor + Resultado,
    Qtd is Quantidade - 1,
    soma(Qtd, Soma).

main:-
    read(Quantidade),
    soma(Quantidade, 0).