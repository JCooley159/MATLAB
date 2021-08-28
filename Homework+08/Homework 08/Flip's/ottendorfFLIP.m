function [secretMessage] = ottendorf(ref, cipher)
    reference = 0;
    secretMessage = '';
    ciphers = 0;
    cipher = fopen(cipher);
    while (ciphers ~= -1)
        ciphers = fgets(cipher);
        s = strfind(ciphers, '-');
        blankLineCheck = length(s) ~= 0;
        z = double(ciphers(1));
        punctuationCheck = isstrprop(z, 'punct');
        if ciphers ~= -1 & blankLineCheck & ~punctuationCheck
            hyphen = strfind(ciphers, '-');
            hyphen1 = hyphen(1);
            hyphen2 = hyphen(2);
            hyphen3 = hyphen(3);
            refNum = ciphers(1:hyphen1-1);
            lineNum = ciphers(hyphen1+1:hyphen2-1);
            lineNum = str2num(lineNum);
            wordNum = ciphers(hyphen2+1:hyphen3-1);
            wordNum = str2num(wordNum);
            letterNum = ciphers(hyphen3+1:end);
            letterNum = str2num(letterNum);
            if (letterNum ~= 0)
                fileName = strcat(ref, '_', refNum, '.txt');
                r = fopen(fileName);
                for i = 1:lineNum;
                    reference = fgetl(r);
                end
                fclose(r);
                spaceIndices = strfind(reference, ' ');
                if wordNum == 1 & length(spaceIndices)~= 0
                    reference = reference(1:spaceIndices(1)-1);
                elseif wordNum == 1 & length(spaceIndices) == 0
                    reference = reference(1:end);
                elseif wordNum == length(spaceIndices)+1
                    reference = reference(spaceIndices(wordNum-1)+1:end);
                else
                    reference = reference(spaceIndices(wordNum-1)+1:spaceIndices(wordNum)-1);
                end
                secretMessage = [secretMessage reference(letterNum)];
            end
        elseif ciphers ~= -1 & ~blankLineCheck & ~punctuationCheck
           secretMessage = [secretMessage ' '];
        elseif ciphers ~= -1 & punctuationCheck
           secretMessage = [secretMessage ciphers(1)];
        end
    end
    fclose(cipher);
end