:- initialization(main).

periodo_orbital("Terra", 1).
periodo_orbital("Mercurio", 0.2408467).
periodo_orbital("Venus", 0.61519726).
periodo_orbital("Marte", 1.8808158).
periodo_orbital("Jupter", 11.862615).
periodo_orbital("Saturno", 29.447498).
periodo_orbital("Urano", 84.016846).
periodo_orbital("Netuno", 164.79132).

converte_anos(Segundos, Anos):-
    Anos is Segundos / 31557600.

obtem_idade(Planeta, Anos, Idade):-
    periodo_orbital(Planeta, Fator),
    Idade is round(Fator * Anos).

input_number(Numero):-
    read_line_to_codes(user_input, Codes),
    string_to_atom(Codes, Atom),
    atom_number(Atom, Numero).


main:-
    read_line_to_string(user_input, Planeta),
    input_number(Segundos),
    converte_anos(Segundos, Anos),
    obtem_idade(Planeta, Anos, Idade),
    write(Idade),
    writeln(" Anos"),
    halt(0).