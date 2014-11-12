
-module(p16).
-export([parser/1, test_parser/0]).
test_parser()->
	 Xml=(<<"<root><kay1>text</kay1></root>">>),
	 parser(Xml).

parser(Binar)->
	parser(Binar,[]).

parser(<<"<",Rest/binary>>,Acc)->
	parser(Rest,Acc);

parser(<<">",Rest/binary>>,Acc)->
	parser(Rest,Acc);

parser(<<"/",Rest/binary>>,Acc)->
	parser(Rest,Acc);

parser(<<Tag,Rest/binary>>,Acc)->
	parser(Rest,[Tag|Acc]);
parser(<<"",_Rest/binary>> ,Acc)->
	reverse(Acc).
	
reverse(List) ->
  reverse(List,[]).

reverse([H|T],Acc) ->
  reverse(T,[H|Acc]);

reverse([],Acc) ->
    Acc.
