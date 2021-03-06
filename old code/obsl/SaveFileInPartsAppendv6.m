function SaveFileInPartsAppendv6(newfishdir,CellResp,namestring)

nParts = round(numel(CellResp)/(10^8));
ix = round(linspace(0,size(CellResp,1),nParts+1)); %#ok<NASGU>
for i = 1:nParts,
    disp(num2str(i));
    eval([namestring,'_' num2str(i) '= CellResp(ix(i)+1:ix(i+1),:);']);
    save(newfishdir,[namestring,'_' num2str(i)],'-v6','-append');
end

end