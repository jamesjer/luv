let () =
  let timer =
    match Luv.Timer.init () with
    | Ok timer -> timer
    | Error error ->
      Printf.eprintf "Could not create timer: %s\n" (Luv.Error.strerror error);
      exit 1
  in

  print_string "Delaying for one second...";
  flush stdout;

  let result =
    Luv.Timer.start timer 1000 begin fun () ->
      Luv.Handle.close timer;
      print_endline " done!"
    end;
  in
  if result <> Luv.Error.success then begin
    Printf.eprintf "Could not start timer: %s\n" (Luv.Error.strerror result);
    exit 1
  end;

  ignore (Luv.Loop.run ())