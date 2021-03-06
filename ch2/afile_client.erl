-module(afile_client).
-export([ls/1, get_file/2, put_file/2]).

ls(Server) ->
	Server ! { self(), list_dir },
	receive 
		{ Server, FileList } ->
			FileList
	end.

get_file(Server, File) ->
	Server ! { self(), { get_file, File }},
	receive
			{Server, Content} ->
				Content
	end.

put_file(Server, File) ->
	File_result = file:read_file(File),
	Server ! { self(), {put_file, File_result}},
	receive
			{ Server, put_completed} ->
				io:format("put completed")
	end.