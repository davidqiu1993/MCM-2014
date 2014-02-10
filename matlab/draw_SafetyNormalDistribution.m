clear;
hold off;
x = [0:0.01:20];
y = normpdf(x, 6, 1);
plot(x,y);
axis([0, 20, 0, 1]);
hold on;
for x=0:0.01:5
    plot([x x], [0 normpdf(x, 6, 1)]);
end
hold off;
