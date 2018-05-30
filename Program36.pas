var
  h, w, h1, w1, h2, w2: longint;

begin
  readln(h, w);
  readln(h1, w1);
  readln(h2, w2);
  if h > w then 
  begin
    swap(h, w);
    swap(h1, w1);
    swap(h2, w2);
  end;
  if (h1 = h2) and (w1 = w2) then writeln('Yes')
  else
  if h = 1 then writeln('No')
  else 
  if (h = 2) then 
    begin
    if ((w2 - w1) mod 2 = 0) and (odd((w2 - w1) div 2) = odd(h2 - h1)) then writeln('Yes')
    else writeln('No')
    end
    else
  if (h = 3) and (w = 3) then 
    begin
    if ((h1 = 2) and (w1 = 2)) or ((h2 = 2) and (w2 = 2)) then writeln('No')
    else writeln('Yes')
    end
  else if (h = 3) and (w > 3) then writeln('Yes')
  else writeln('Yes');
end.