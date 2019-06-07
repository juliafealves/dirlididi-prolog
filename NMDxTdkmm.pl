:- initialization(main).

lista_compras(0, Troco):- writeln(Troco).
lista_compras(Itens, Troco) :-
    read(Valor),
    read(Marcas),
    comprar_item(Valor, Marcas, TrocoItem),
    TrocoAcumulado is Troco + TrocoItem,
    Item is Itens - 1,
    lista_compras(Item, TrocoAcumulado).

comprar_item(Valor, Marcas, TrocoItem) :-
    read(Preco),
    Marca is Marcas - 1,
    mais_barato(Marca, Preco, MaisBarato),
    TrocoItem is Valor mod MaisBarato.

mais_barato(0, MenorPreco, MaisBarato):- MaisBarato is MenorPreco.
mais_barato(Marcas, MenorPreco, MaisBarato) :-
    read(Preco),
    PrecoBaixo is min(Preco, MenorPreco),
    Marca is Marcas - 1,
    mais_barato(Marca, PrecoBaixo, MaisBarato).

main:-
    read(Itens),
lista_compras(Itens, 0).