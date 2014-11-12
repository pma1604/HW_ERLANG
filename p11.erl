%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Oct 2014 15:26
%%%-------------------------------------------------------------------
-module(p11).
-author("pma1604").

%% API
%P11 (**) Закодировать список с использованием модифицированого алгоритма RLE:
%Пример:
%1> p11:encode-modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%{4,a},b,{2,c},{2,a},d,{4,e}]


-export([encode_modified/1]).
encode_modified(List) ->
  encode_modified(List, 1,[]).



encode_modified([H, H | T], Num,Acc) ->
  encode_modified([H | T], Num + 1,Acc);

encode_modified([H | T], 1,Acc) ->
  encode_modified(T,1,[H|Acc]);

encode_modified([H | T], Num,Acc) ->
  encode_modified(T,1,[{Num, H}|Acc]);

encode_modified([], _,Acc) ->
  p05:reverse(Acc).