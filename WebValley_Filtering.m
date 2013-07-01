function [] = WebValley_Filtering
close all

% load image
%imName = 'HeLa13166-1.png';
%imName = 'Abraham_Lincoln_small.png';
imName = 'Lincoln_1863.png';
J = imread(imName);
I = mat2gray(J);

imshow(I)
title('original')
figure


% 1. Point processing examples
% show inverse image
J = 1-I;
imshow(J)
title('inverse')

% show flipped image
sz = size(I);
J = I(:,sz(2):-1:1);
imshow(J)
title('flip')

% show log transform
J = log(1+10*I);
imshow (J)
title('saturation')

% show thresholding
J = (I>1/2);
imshow (J)
title('threshold')

% show notch threshold
mk = I>.3 & I<.5;
J(mk) = I(mk);
J(~mk) = 0;
imshow (J)
title('notch threshold')

% 2. Neighborhood processing examples
ker = ones(3);
ker = ker/sum(sum(ker));
J = filter2(ker,I);
imshow(J)
title('filtered')