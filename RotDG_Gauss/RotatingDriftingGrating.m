%%% This matlab script is used for imshow population response for rotating
%%% drifting grating.
for i= 5:5:500
idx1 = 1:4:64;
figPha = reshape(mEbin_ra(i,idx1),4,4);
subplot(2,2,1);
imagesc(figPha);axis square;caxis([0 0.5]);
idx1 = 2:4:64;
figPha = reshape(mEbin_ra(i,idx1),4,4);
subplot(2,2,2);
imagesc(figPha);axis square;caxis([0 0.5]);
idx1 = 3:4:64;
figPha = reshape(mEbin_ra(i,idx1),4,4);
subplot(2,2,3);
imagesc(figPha);axis square;caxis([0 0.5]);
idx1 = 4:4:64;
figPha = reshape(mEbin_ra(i,idx1),4,4);
subplot(2,2,4);
imagesc(figPha);axis square;caxis([0 0.5]);
pause;
end