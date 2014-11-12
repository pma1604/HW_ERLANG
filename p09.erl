%%P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки:
%%Пример:
%%1> p09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%%[[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

-module(p09).
-export([pack/1]).

pack(List)->
	pack(List,[]).
pack([],Acc)->
  p05:reverse(Acc);
pack([H|T],[[H|_]=AccH|AccT])->
	pack(T,[[H|AccH]|AccT]);
pack([H|T],Acc)-> 
	pack(T,[[H]|Acc]).

