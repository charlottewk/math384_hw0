
let increment (n : int) = n + 1;;


let guess_game ( to_guess : int) = 
    let success = ref false in
    let failure = ref false in
    let guess   = ref 0 in
    let guess_count = ref 0 in
    while not (!success) && not (!failure) do
        guess_count := increment (!guess_count);
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
        if (!guess_count) == 6 && not (!success)
        then begin
            failure := true;
        end;
    done;
    if (!success)
    then begin
         print_string ("You got it. My number was "^(string_of_int (to_guess))^". Good job!\n");
        end
    else begin
        print_string ("You lose. The number was "^(string_of_int (to_guess))^".\n");
    end;;

let _ = begin Random.self_init (); guess_game (Random.int (100)); end



            
