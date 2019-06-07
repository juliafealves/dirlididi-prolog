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
    read(MaisBarato),
    Marca is Marcas - 1,
    mais_barato(Marca, MaisBarato),
    TrocoItem is Valor mod MaisBarato.

mais_barato(0, MaisBarato).
mais_barato(Marcas, MaisBarato) :-
    read(Preco),
    PrecoBaixo is min(Preco, MaisBarato),
    Marca is Marcas - 1,
    mais_barato(Marca, PrecoBaixo).

main:-
    read(Itens),
    lista_compras(Itens, 0).