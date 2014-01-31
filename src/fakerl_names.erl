%%%-------------------------------------------------------------------
%%% @author Mawuli Adzaku <mawuli@mawuli.me>
%%% @copyright (C) 2014, Mawuli Adzaku
%%% @doc 
%%% Fake name generator
%%% @end
%%% Created : 31 Jan 2014 by Mawuli Adzaku <mawuli@mawuli.me>
%%%-------------------------------------------------------------------
-module(fakerl_names).
-author("Mawuli Adzaku <mawuli@mawuli.me>").
-define(FIRST_NAMES, ["John", "Jane" , "Bill", "Douglas", "Yaw", "Nancy"]).
-define(LAST_NAMES, ["Doe", "Cosby", "Rain", "Drew", "Asare"]).
-compile([export_all]).

formats() ->
    ["{{first_name}} {{last_name}}"].

%% @doc Returns a random name. 
%% This name is a combination of a first name and a last name.
-spec name() -> Name when 
      Name :: list().
name() ->
    Pattern = fakerl:random_element(?MODULE:formats()),
    fakerl:parse(Pattern, ?MODULE).

%% @doc Returns a random 'first name'
-spec first_name() -> Name when 
      Name :: list().
first_name() ->
    fakerl:random_element(?FIRST_NAMES).

%% @doc Returns a random 'surname', also known as 'last name'.
-spec last_name() -> Name when 
      Name :: list().
last_name() ->
    fakerl:random_element(?LAST_NAMES).