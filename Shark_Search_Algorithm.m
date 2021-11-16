Dx=100;
Dy=100;
axis([0 Dx 0 Dy]);
N=200;
K=4;
d=min(Dx, Dy)/K;
click=ginput(1);
fish=zeros(50,4);
i=1;
while i<=N
    x= rand * Dx;
    y= rand * Dy;
    if d>=sqrt((click(1)-x)^2+(click(2)-y)^2)
        fish(i, 1)=x;
        fish(i, 2)=y;
        hold on;
        plot (x,y, 'o'); %fishes
        i=i+1;
    end
end
click1=ginput(1);
bestposition=1;
i=1;
while i<=N
    position=sqrt((click1(1)-fish(i,1))^2+(click1(2)-fish(i,2)^2)); 
    if i==1
        max=position;
    else
        if max<position
            max=position;
            besposition=i;
        end
    end
    i=i+1;
end
hold on;
plot (click(1), click(2), 'r*'); %shark
    