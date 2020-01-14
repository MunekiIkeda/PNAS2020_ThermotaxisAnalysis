 % Calculate bending
 
 function [Bendwarm, Bendcool, headBend, headBendwarm, headBendcool] = bending(interval, framelength, middle, headbend, state)
  headBend = NaN(framelength,1);
  headBendposi = NaN(framelength,1);
  headBendnega = NaN(framelength,1);
  headBendwarm = NaN(framelength,1);
  headBendcool = NaN(framelength,1);
  Bendwarm = NaN(framelength,1);
  Bendcool = NaN(framelength,1);
  
  for I = 4:framelength-3;
    headBend(I) = mean(headbend(I-3:I+3));
  end
  
  for I = 1+interval:framelength-interval;
    if max(headBend(I-2:I+2))==headBend(I) && mean(headBend(I-2:I+2))>-1000 && headBend(I)>0;
      headBendposi(I) = headBend(I);
    elseif min(headBend(I-2:I+2))==headBend(I) && mean(headBend(I-2:I+2))>-1000 && headBend(I)<0;
      headBendnega(I) = headBend(I);
    end
  end
  
   for I = 1+interval:framelength-interval;
    if state(I) == 0
      if middle(I,1) > 0 
        Bendwarm(I) = headBendposi(I);
        Bendcool(I) = -headBendnega(I);
      else
        Bendwarm(I) = -headBendnega(I);
        Bendcool(I) = headBendposi(I);        
      end
    end
   end
  
   for I = 1+interval:framelength-interval;
    if state(I) == 0
      if middle(I,1) > 0 && headBend(I) > 0
        headBendwarm(I) = headBend(I);
        headBend(I) = headBend(I);
      elseif middle(I,1) > 0 && headBend(I) < 0
        headBendcool(I) = -headBend(I);
        headBend(I) = headBend(I);
      elseif middle(I,1) < 0 && headBend(I) > 0
        headBendcool(I) = headBend(I);
        headBend(I) = -headBend(I);
      elseif middle(I,1) < 0 && headBend(I) < 0;
        headBendwarm(I) = -headBend(I);
        headBend(I) = -headBend(I);
      end
    end
  end