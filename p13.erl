%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Oct 2014 18:38
%%%-------------------------------------------------------------------
-module(p13).
-author("pma1604").

%% API

%P13    (**) Написать декодер для стандартного алгоритма RLE:
%Пример:
%1> p13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).
%[a,a,a,a,b,c,c,a,a,d,e,e,e,e]

-export([decode/1]).
decode(List) ->
  decode(List,[]).
decode([],Acc) ->
  p05:reverse( p07:flatten(Acc));
decode([{Num,H} | T],Acc) ->
  decode(T,[re([H],Num)|Acc]);
decode([H|T],Acc) ->
  decode(T,[H|Acc]).
re(Line,Num) ->
  re(Line,Num,[]).
re(_Line,0,Acc) ->
  Acc;
re([H | T], N,Acc) ->
  re([H|T], N-1, [H|Acc]).
