% Requirements: Erlang OTP installed (https://www.erlang.org/)
% Execution: erl -noshell -s hello hello_world -s init stop

-module(hello).
-export([hello_world/0]).

% hello_world/0 is a function that prints the classic greeting.
% io:fwrite/1 or io:format/1 are used for formatted output.
hello_world() ->
    io:fwrite("Hello, World!\n").
