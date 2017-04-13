%分析方法https://wenku.baidu.com/view/f22715e3f8c75fbfc77db24c.html
t=input('请输入席位委员会个数input the total sets:');
p=[235 333 432]; %每宿舍学生人数
for i=1:3
  a(i)=p(i)/(p(1)+p(2)+p(3));
  n(i)=fix(a(i)*t); %已经按比例分好的宿管
  q(i)=(p(i)*p(i))/(n(i)*(n(i)+1)); %Q的计算公式，具体原理看解答
end
[ma,I]=max(q); %找出最大的Q值q(I)以及其在当前一位数组中的位置I。
%这里一定要改一下，把那个文档中的max(q(i))改成max(q)。放for里面外面无所谓
n(I)=n(I)+1;
n
m  = t-(n(1)+n(2)+n(3)); %计算按比例分配后剩余的席位个数
if(m==0) %没有剩余席位表示分配完成
disp('分配完成！Success！')
end