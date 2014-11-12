%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Oct 2014 19:41
%%%-------------------------------------------------------------------
-module(p14).
-export([duplicate/1]).
%P14 (*) Написать дубликатор всех элементов входящего списка:
%Пример:
%> p14:duplicate([a,b,c,c,d]).
%a,a,b,b,c,c,c,c,d,d]
duplicate(List) ->
  duplicate(List,[]).
duplicate([],Acc) ->
p05:reverse(Acc);
duplicate([H | T],Acc) -> duplicate(T,[H,H | Acc]).