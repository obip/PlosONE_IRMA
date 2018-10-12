function [listImages] = getListofImages(sourceFile)
    %Author: Obioma Pelka
    %get list of images from folder

    listImages = {};
    imagefiles = dir(sourceFile);      
    nfiles = length(imagefiles);
    
    for i=3:nfiles
        entry = imagefiles(i,1);
        name = entry.name;
        folder = entry.folder;
        path = strcat(folder,'/',name);
        
        content = dir(path);
        if isempty(content) == 0
            for j=1:length(content)
                listImages{end+1,1} = strcat(content(j).folder,'/',content(j).name);
            end
        end
    end
end

