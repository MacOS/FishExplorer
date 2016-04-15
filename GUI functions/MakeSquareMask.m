function plane_inds = MakeSquareMask(width_z,thickness_z,dimv)

square=ones(width_z,thickness_z); % make mask of filled circle % (7,15)
mask = zeros(dimv(1),dimv(2));
mask(1:width_z,1:thickness_z) = square;
ix = find(mask);
cix = sub2ind([dimv(1),dimv(2)],round((width_z+1)/2),round((thickness_z+1)/2));
plane_inds = ix - cix;

% yzplane_inds = -radius_z:radius_z;
% zxplane_inds = -width_z*dimv_zx(1):dimv_zx(1):width_z*dimv_zx(1);
end

% square=ones(width_z,thickness_z); % make mask of filled circle % (7,15)
% mask = zeros(dimv_yz(1),dimv_yz(2));
% mask(1:width_z,1:thickness_z) = square;
% ix = find(mask);
% cix = sub2ind([dimv_yz(1),dimv_yz(2)],round((width_z+1)/2),round((thickness_z+1)/2));
% yzplane_inds = ix - cix;
% % yzplane_inds = -radius_z:radius_z;
% 
% square=ones(thickness_z,width_z); % make mask of filled circle % (7,15)
% mask = zeros(dimv_zx(1),dimv_zx(2));
% mask(1:thickness_z,1:width_z) = square;
% ix = find(mask);
% cix = sub2ind([dimv_zx(1),dimv_zx(2)],round((thickness_z+1)/2),round((width_z+1)/2));
% zxplane_inds = ix - cix;