function ord = iptnum2ordinal (num)

  if (argn(2) ~= 1)
    error("Wrong number of input arguments");
  elseif (~or(type(num)==[1 5 8]) || ~isscalar (num) || ~isreal (num) || num <= 0 || modulo (num, 1) ~= 0)
    error ("num must be a real positive integer");
  end

  select num
    case 1 then  ord = "first"
    case 2 then ord = "second"
    case 3 then  ord = "third"
    case 4 then  ord = "fourth"
    case 5 then  ord = "fifth"
    case 6 then  ord = "sixth"
    case 7 then ord = "seventh"
    case 8 then  ord = "eighth"
    case 9 then ord = "ninth"
    case 10 then ord = "tenth"
    case 11 then ord = "eleventh"
    case 12 then ord = "twelfth"
    case 13 then ord = "thirteenth"
    case 14 then ord = "fourteenth"
    case 15 then ord = "fifteenth"
    case 16 then ord = "sixteenth"
    case 17 then ord = "seventeenth"
    case 18 then ord = "eighteenth"
    case 19 then ord = "nineteenth"
    case 20 then ord = "twentieth"
    else 
        //ord = sprintf ("%dth", num);

      numStr = string (num);
      lD=part(numStr,$);
      disp(lD);
      select lD
        case "1" then ord = numStr + "st"
        case "2" then ord = numStr + "nd"
        case "3" then ord = numStr + "rd"
        else  ord = numStr + "th"
      end
  end

endfunction
