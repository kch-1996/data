%[~,name]=xlsread('D:\����\������ͨ��ѧ\�γ�\�Ƽ���\review.xlsx',1,'C2:C54347');
fid=fopen('D:\����\������ͨ��ѧ\�γ�\�Ƽ���\3.txt','wt');
fpn = fopen ('D:\����\������ͨ��ѧ\�γ�\�Ƽ���\business.txt', 'rt');
sss=0;
while feof(fpn) ~= 1
    file = fgetl(fpn);
    sss = sss+1;
    if mod(sss,10000)==0
        sss/1000
    end
    a1=strfind(file,'business_id')+14;
    a2=strfind(file,'name')-4;
    b=file(a1:a2);
    for i=1:54346
        if strcmp(b,name{i,1})
            fprintf(fid,'%s\n',file);
            break;
        end
    end
end
fclose(fid);
fclose(fpn);


