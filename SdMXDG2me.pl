:- initialization(main).

tipo(a).
tipo(b).
tipo(ab).
tipo(o).

doacao(Tipo, Tipo, "doar_e_receber").
doacao(o, Tipo, "doar").
doacao(Tipo, o, "receber").
doacao(a, b, "incompativel").
doacao(a, ab, "doar").
doacao(b, a, "incompativel").
doacao(b, ab, "doar").
doacao(ab, Tipo, "receber").

main:-
    read(Tipo1), read(Tipo2),
    tipo(Tipo1), tipo(Tipo2),
    doacao(Tipo1, Tipo2, Resultado),
    write(Resultado).