YEAR=[1850:10:2000];
NUM=[23.2 31.4 38.6 50.2 62.9 75.995 91.972 105.711 123.203 131.699 150.697 179.329 203.212 226.505 249.633 281.422];
p=polyfit(year,num,2);
num2010=polyval(p,2010)
%������ָ����ʽ
ft_1=fittype('a*(b^x)','dependent',{'y1'},'independent',{'x'},'coefficients',{'a','b'});
cf_1=fit( YEAR', NUM', ft_1, 'Startpoint',[20 1])
plot(YEAR',NUM','*')
hold on,
plot(cf_1,'k', 'fit', 0.95)%ָ�����߻������Ǻ�ɫ��
hold on,
%�����Ǵ����͵���ʽ
st_2 = [500 30 0.2 ];%�²�һ��abk��ֵ:Startpoint
%������ߵ���ʽ ����������Ա����������б�
ft_2 = fittype('a/(1+b*exp(-k*(x-1850)))', 'dependent',{'y2'},'independent',{'x'},'coefficients',{'a', 'b','k'}); 
%��һ��''����Ǵ����͵ļ��㹫ʽ
%��YEAR��NUM����ȥ��ϣ����'��������ת��
cf_2=fit(YEAR', NUM', ft_2, 'Startpoint',st_2) 
plot(cf_2,'g', 'fit' ,0.95)	%�������߻���������ɫ��
