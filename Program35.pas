var m,st:array of int64;
a,b:int64;
function Partition(a: array of int64; l,r: int64): int64;
begin
  var i := l - 1;
  var j := r + 1;
  var x := a[l];
  while True do
  begin
    repeat
      i += 1;
    until a[i]>=x;
    repeat
      j -= 1;
    until a[j]<=x;
    if i<j then 
      begin
      Swap(a[i],a[j]);
      Swap(st[i],st[j]);
      end
    else 
    begin
      Result := j;
      exit;
    end;
  end;
end;

procedure QuickSort(a: array of int64; l,r: int64);

begin
  if l>=r then exit;
  var j := Partition(a,l,r);
  QuickSort(a,l,j);
  QuickSort(a,j+1,r);
end;
begin
readln(a);
setlength(m,a);
setlength(st,a);
for var i:=0 to a-1 do
  begin
  read(m[i],st[i]);
  end;
readln(b);
setlength(m,a+b);
setlength(st,a+b);
for var i:=a to a+b-1 do
  begin
  read(m[i],st[i]);
  end;
quicksort(m,0,a+b-1);
for var i:=1 to a+b-1 do
  begin
  if m[i]=m[i-1] then 
    begin
    st[i]:=max(st[i],st[i-1]);
    st[i+1]:=0;
    end;
  end;
var sum:int64;
for var i:=0 to a+b-1 do
  sum:=sum+st[i];
writeln(sum);
end.


{
10
598654597 488228616
544064902 21923894
329635457 980089248
988262691 654502493
967529230 543358150
835120075 128123793
809901567 613170206
152157661 479980560
859252956 318029856
614959273 735298093
10
544064902 740807372
859252956 765838311
835120075 115983627
825067417 463026366
809901567 500099903
614959273 322932832
33955432 657532637
816892960 927933923
916770606 754371712
967529230 566149252
}