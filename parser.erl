
-module(parser).
-export([parser/1,test_parser/0]).
test_parser()->
	 Xml=(<<"<root><key1 attr =One></key1></root>">>),
	 parser(Xml).

parser(Xml) ->
	[Other,Bin2] =binary:split(Xml,<<"<">>),
	[RawKey,RawValue] =binary:split(Bin2,<<">">>),
    [Key,Attrs] =binary:split(RawKey,<<" ">>),
ValueBin = 	binary:split(RawValue,<<"/","Key/binary">>),
<<<<<<< HEAD
X={Key,_,parser(ValueBin)},
=======
X={Key,Attr,parser(ValueBin)},
>>>>>>> 9be9114fe56fd688ee8aa28e67016361d2b922f2
X.

