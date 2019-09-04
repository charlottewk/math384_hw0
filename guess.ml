
let guess_game ( to_guess : int) = 
    let success = ref false in
    let guess   = ref 0 in
    while not (!success) do
        print_string ("What is your guess?\n");
        guess := int_of_string (read_line ());
        if (!guess) < to_guess
        then begin
             print_string ("Too low. Guess higher.\n");
             end
        else begin if (!guess) > to_guess
                   then begin
                        print_string ("Too high. Guess lower.\n");
                        end
                   else begin
                        success := true;
                        end
             end;
    done;
    print_string ("You got it. My number was "^(string_of_int (to_guess))^". Good job!\n");;

let _ = begin Random.self_init (); guess_game (Random.int (100)); end



            
