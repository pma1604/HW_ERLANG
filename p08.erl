
%% %-------------------------------------------------------------------
%% P08 (**) Удалить последовательно следующие дубликаты:
%% Пример:
%% 1> p08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%% [a,b,c,a,d,e]
%% %-------------------------------------------------------------------
-module(p08).
-export([compress/1]).
compress(List)->
	compress(List,[]).

compress([],Acc)->
 p05:reverse(Acc);

compress([H,H|T],Acc)->
	compress([H|T],Acc);
	
compress([H|T],Acc)->
	compress(T,[H|Acc]).






