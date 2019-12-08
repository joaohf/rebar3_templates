-module({{name}}).

-behaviour(gen_server).

-define(SERVER, ?MODULE).

-export([start_link/0]).

-export([init/1,
         handle_continue/2,
         handle_call/3,
         handle_cast/2, 
         terminate/2, 
         handle_info/2, 
         code_change/3]).


start_link() ->
    gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

init(Args) ->
    {ok, Args}.

handle_continue(_Continue, State) ->
    {noreply, State}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

