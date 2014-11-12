%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Oct 2014 15:07
%%%-------------------------------------------------------------------
-module(p10).
-author("pma1604").

%% API

%P10 (**) Закодировать список с использованием алгоритма RLE:
%Пример:
%1> p10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%[{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]

-export([encode/1]).
encode(List) ->
  encode(List, 1 ,[]).

encode([H, H | T], Num,Acc) ->
  encode([H | T], Num + 1,Acc);
encode([H | T], Num,Acc) ->
    encode(T,1,[{Num,H}|Acc]);
encode([],_,Acc) ->
  p05:reverse(Acc).
