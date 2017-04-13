x=[0:0.1:20];
y = (80+2.*x).*(8-0.1.*x)-5.*x-640;
plot(x,y);
p=find(y==max(y));
text(x(p),y(p),'o','color','g');
text(x(p),y(p),['(',num2str(x(p)),',',num2str(y(p)),')'],'color','b');
