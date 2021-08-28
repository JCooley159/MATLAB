function accounting( fileName )
finalName=[fileName(1:end-4),'_fixed.xls'];
[~,~,raw]=xlsread(fileName);
headers=raw(1,:);
raw=raw(2:size(raw,1),:);

for i=1:numel(headers)
    if strcmp(headers{i},'Item')
        itemLoc=i;
    elseif strcmp(headers{i},'Quantity')
        quanLoc=i;
    elseif strcmp(headers{i},'Per-unit Price')
        pUPrLoc=i;
    end 
end

tax=[];
finalPrice=[];

for i=1:size(raw,1)
    tax{i}=round(100 * raw{i,pUPrLoc}*.08) / 100;
    finalPrice{i}=round(100 * (tax{i}*raw{i,quanLoc})+(raw{i,pUPrLoc}*...
                  raw{i,quanLoc})) / 100;
end

tax=tax';
finalPrice=finalPrice';
raw=[raw(:,itemLoc),raw(:,quanLoc),raw(:,pUPrLoc),tax,finalPrice];
headers=[headers(itemLoc),headers(quanLoc),headers(pUPrLoc),...
        {'Per-unit Tax'},{'Total Price'}];
final=[headers;raw];
xlswrite(finalName,final);
end