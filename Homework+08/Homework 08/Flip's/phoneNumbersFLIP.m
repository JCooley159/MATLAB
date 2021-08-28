function [number] = phoneNumbers(name)
list = fopen(name);
line = fgetl(list);
[updated,~] = strtok(name,'.');
new = strcat(updated,'_updated.txt');
n = 0;
update = fopen(new, 'w');
while ischar(line)
    [~,a] = strtok(line,'(');
    b =a;
    b(strfind(b,'-')) = '';
    b(strfind(b,'(')) = '';
    b(strfind(b,')')) = '';
if all(b>='0' & b<= '9')
   if length(b) == 10;
    b = strcat('(',b(1:3),'-',b(4:6),'-',b(7:end),')');
    if strcmp(a,b)
        n = n+1;
        fprintf(update,'%s\n',line);
    end
   end
end
    line=fgetl(list);
end
number = n;
fclose(list);
fclose(update);
end