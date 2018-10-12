function newImage = getImagePadding(im)
% Rescales an Image to have [512,512] pixels using padding/repetition.
% Author: Obioma Pelka
    height = size(im,1);
    width = size(im,2);
    
    newImage = im;
    if height < 512
        differenzH = 512-height;
        topH = round(differenzH/2);
        downH = differenzH - topH;
        if height > topH
            newImage = [im(1:topH,:); newImage; im(height-downH:height-1,:)];
        else
            newImage = [im(1:height,:); newImage; im(1:height,:)];
        end
    end
    
    if width < 512
        differenzW = 512-width;
        leftW = round(differenzW/2);
        rightW = differenzW- leftW;
        if width > leftW
            newImage = horzcat(newImage(:,1:leftW), newImage, newImage(:,width-rightW:width-1));
        else
            newImage = horzcat(newImage(:,1:width), newImage, newImage(:,1:width));
        end
    end
end