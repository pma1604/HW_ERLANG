%%%-------------------------------------------------------------------
%%% @author pma1604
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Oct 2014 18:14
%%%-------------------------------------------------------------------
-module(p02).
-author("pma1604").

%% API
-export([but_last/1]).
but_last([_,_]=L) ->
  L;
but_last([_H|T])->
  but_last(T);
but_last([]) ->
  list_is_emty.

