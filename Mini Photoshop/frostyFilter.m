%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Name : Ajay Kedia
% Course No. : CSCI 5722 S18
% Assignment No. : Homework 1
% Instructor : Prof. Ioana Fleming
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function[newImage] = frostyFilter(current_img, n, m)

    [a,b,c] = size(current_img);
    newImage = current_img;
    for color = 1 : c
        for row = 1 : a - n
           for col = 1 : b - m
              subImage = newImage(row : row + n , col : col + m, color);
              subImage = subImage(:);
              newImage(row,col,color) = datasample(subImage, 1);
           end
        end
    end
end