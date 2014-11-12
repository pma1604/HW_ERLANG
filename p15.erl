%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Oct 2014 19:48
%%%-------------------------------------------------------------------
-module(p15).
-author("pma1604").
%% API
%P15 (**) Написать функцию-репликатор всех элементов входящего списка:
%Пример:
%1> p15:replicate([a,b,c], 3).
%[a,a,a,b,b,b,c,c,c]
-export([replicate/2]).
replicate(List,Num)->
    replicate(List,Num,[]).
replicate([H|T],Num,Acc)->
  X= re([H],Num),
  replicate(T,Num,[X|Acc]);
replicate([],_,Acc)->
 p05:reverse( p07:flatten(Acc)).
re(Line,Num) ->
  re(Line,Num,[]).
re(_Line,0,Acc) ->
  Acc;
re([H | T], N,Acc) ->
  re([H|T], N-1, [H|Acc]).