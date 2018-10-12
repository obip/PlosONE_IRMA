% Extract scheme from excel files test
% Author: Obioma Pelka


% 2008
codesAll_08 = ImageCLEFmed2009testcodes(:,[1 12]);
I = ismember(codesAll_08(:, 2), '\N');
codesAll_08(I, :) = [];
clear I

counter = 0;
for i=1:length(codesAll_08)
    C = strsplit(codesAll_08{i,2},'-');
    if length(C) > 1
        counter = counter + 1;
        for j=1:length(C)
            codesAll_08(i,(2+j)) = C(1,j);
        end   
    end
end
column1_Code = codesAll_08(:,3);
[Unique_08_A1,~,ic1] = unique(column1_Code);
codesAll_08(:,7) = num2cell(ic1);

column2_Code = codesAll_08(:,4);
[Unique_08_A2,~,ic2] = unique(column2_Code);
codesAll_08(:,8) = num2cell(ic2);

column3_Code = codesAll_08(:,5);
[Unique_08_A3,~,ic3] = unique(column3_Code);
codesAll_08(:,9) = num2cell(ic3);

column4_Code = codesAll_08(:,6);
[Unique_08_A4,~,ic4] = unique(column4_Code);
codesAll_08(:,10) = num2cell(ic4);
