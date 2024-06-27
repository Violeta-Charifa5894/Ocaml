let rec hanoi dep aux dest n =
  if n > 0 then begin
  
    hanoi dep dest aux (n-1);
    
    Printf.printf "%s -> %s\n" dep dest;
    hanoi aux dep dest (n-1)
  end


let () = hanoi "A" "B" "C" 5

let hanoi n =
  let rec hanoi_aux dep aux dest n =
    if n > 0 then begin
      hanoi_aux dep dest aux (n-1);
      Printf.printf "%s -> %s\n" dep dest;
      hanoi_aux aux dep dest (n-1)
    end
  in
  hanoi_aux "A" "B" "C" n

let () = hanoi 5

let hanoi n =
  let rec hanoi_aux dep aux dest n =
    if n > 0 then begin
      hanoi_aux dep dest aux (n-1);
      Printf.printf "%s -> %s\n" dep dest;
      hanoi_aux aux dep dest (n-1)
    end
  in
  let start_time = Sys.time () in
  hanoi_aux "A" "B" "C" n;
  let end_time = Sys.time () in
  Printf.printf "Temps d'exécution : %f secondes\n" (end_time -. start_time)

let () = hanoi 5
