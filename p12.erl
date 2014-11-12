%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Oct 2014 15:39
%%%-------------------------------------------------------------------
-module(p12).
-author("pma1604").
%% API
%P12 (**) Написать декодер для модифицированого алгоритма RLE:
%Пример:
%1> p12:decode-modified([{4,a},b,{2,c},{2,a},d,{4,e}]).
%[a,a,a,a,b,c,c,a,a,d,e,e,e,e]
-export([decode_modified/1,re/2]).
decode_modified(List) ->
  decode_modified(List,[]).
decode_modified([],Acc) ->
 p05:reverse( p07:flatten(Acc));
decode_modified([{Num,H} | T],Acc) ->
  decode_modified(T,[re([H],Num)|Acc]);
decode_modified([H|T],Acc) ->
  decode_modified(T,[H|Acc]).
re(Line,Num) ->
  re(Line,Num,[]).
re(_Line,0,Acc) ->
  Acc;
re([H | T], N,Acc) ->
  re([H|T], N-1, [H|Acc]).
