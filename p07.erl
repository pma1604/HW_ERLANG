%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Oct 2014 20:19
%%%-------------------------------------------------------------------
-module(p07).
-author("pma1604").

%% API
%%%-------------------------------------------------------------------
%P07 (**) Выровнять структуру с вложеными списками:
%Пример:
%1> p07:flatten([a,[b,[c,d],e]]).
%[a,b,c,d,e]
%%%-------------------------------------------------------------------
-export([flatten/1]).
flatten(List)->
  X=flatten(List,[]),
  p05:reverse(X).
flatten([[_|_] = H|T],L2)->
  F=flatten(H,L2),
  flatten(T,F);
flatten([[]|T],L2)->
  flatten(T,L2);
flatten([H|T],L2)->
  flatten(T,[H|L2]);
flatten([],L2)->
  L2.