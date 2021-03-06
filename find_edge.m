function edge_pixels = find_edge(I)

edge_pixels = []; return;

[h, w, ~] = size(I);
Ir = I(:,:,1);
Ig = I(:,:,2);
Ib = I(:,:,3);

wsize = 2;

edge_pixels = [];
for j=1:w
    for i=1:h
        id=(j-1)*h+i;
        
        x = j-wsize:j+wsize;
        y = i-wsize:i+wsize;
        
        x(x<1) = []; x(x>w) = [];
        y(y<1) = []; y(y>h) = [];
        
        [xx, yy] = meshgrid(x, y);
        ids = sub2ind([h, w], yy(:), xx(:));
        
        if all(Ir(ids)) && all(Ig(ids)) && all(Ib(ids))
            ;
        else
            edge_pixels = [edge_pixels, id];
        end
    end
end

end