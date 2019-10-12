Create database onlineTest
use onlineTest
create table Student(
stuId int identity(1,1),
userName nvarchar(40) not null,
pwd nvarchar(40) not null,
pId int,
fId int,
gNo int,
condition bit not null,
isDelete bit not null,
Access nvarchar(100) not null
)
create table Teacher(
tId int identity(1,1) not null,
userName nvarchar(40) not null,
pwd nvarchar(40) not null,
pId int,
fId int,
isDelete bit not null,
Access nvarchar(100) not null
)
create table Office(
ofId int identity(1,1),
userName nvarchar(40) not null,
pwd nvarchar(40) not null,
Access nvarchar(100) not null
)
create table Faculty(
fId int identity(100,10),
fName nvarchar(40) not null,
isDelete bit not null,
ofId int
)
create table Professional(
pId int,
pName nvarchar(40) not null,
isDelete bit not null,
fId INT 
)
create table Grade(
gId int identity(1,1),
gNo int  not null,
isDelete bit not null,

)
create table Class(
cId int identity(1,1) primary key,
cName nvarchar(40) not null,
gNo int ,
isDelete bit not null,
)
insert Student values('Tom','123456',1,1,2016,'0','0','��������,���Թ���,�ɼ�����')
insert Teacher values('Lily','123456',1,1,'0','��������,���Թ���,�ɼ�����,�Ծ����,�������')
insert Office values('Sam','123456','��������,���Թ���,�ɼ�����,�Ծ����,�������,Ժϵ����,רҵ����,��Ŀ����,�꼶����,�༶����,��ʦ����,ѧ������')
insert Faculty values('��ó����ϵ','0',1)
insert Faculty values('���洫ýϵ','0',1)
insert Faculty values('���ѧԺ','0',1)
insert Faculty values('��������ѧԺ','0',1)
insert Faculty values('���������ѧԺ','0',1)
select * from Faculty
insert Professional values(1,'�����������','0',100)
insert Professional values(2,'����ѧ','0',100)
insert Professional values(3,'������ҵ�ŵ�Ӫ�˹���','0',100)
insert Professional values(4,'ͳ��ѧԭ��','0',100)
insert Professional values(5,'�г�Ӫ��ԭ��','0',100)

insert Professional values(6,'��������缼��','0',110)
insert Professional values(7,'������Ӧ�û���','0',110)
insert Professional values(8,'�������','0',110)
insert Professional values(9,'Ƕ��ʽ��ƿ���','0',110)
insert Professional values(10,'��׿Ӧ�ü�������','0',110)

insert Professional values(11,'��ҵ���','0',120)
insert Professional values(12,'���ʻ��','0',120)
insert Professional values(13,'ע����ʦ','0',120)
insert Professional values(14,'�������������','0',120)
insert Professional values(15,'�������','0',120)

insert Professional values(16,'����ѧ����','0',130)
insert Professional values(17,'���ι���ѧ','0',130)
insert Professional values(18,'���������뷨��','0',130)
insert Professional values(19,'�Ƶ����ѧ','0',130)
insert Professional values(20,'���ξ���ѧ','0',130)

insert Professional values(21,'�������','0',140)
insert Professional values(22,'�Ӿ��������','0',140)
insert Professional values(23,'��װ��������','0',140)
insert Professional values(24,'����ѧ','0',140)
insert Professional values(25,'����ѧ','0',140)

select * from Professional
insert Grade values(1,'2016�������������',2016,'0',100)
insert Grade values(1,'2017�������������',2017,'0',100)
insert Grade values(1,'2018�������������',2018,'0',100)
insert Grade values(1,'2019�������������',2019,'0',100)

insert Grade values(2,'2016����ѧ',2016,'0',100)
insert Grade values(2,'2017����ѧ',2017,'0',100)
insert Grade values(2,'2018����ѧ',2018,'0',100)
insert Grade values(2,'2019����ѧ',2019,'0',100)

insert Grade values(2016,'0')
insert Grade values(2017,'0')
insert Grade values(2018,'0')
insert Grade values(2019,'0')

insert Grade values(4,'2016ͳ��ѧԭ��',2016,'0',100)
insert Grade values(4,'2017ͳ��ѧԭ��',2017,'0',100)
insert Grade values(4,'2018ͳ��ѧԭ��',2018,'0',100)
insert Grade values(4,'2019ͳ��ѧԭ��',2019,'0',100)

insert Grade values(5,'2016�г�Ӫ��ԭ��',2016,'0',100)
insert Grade values(5,'2017�г�Ӫ��ԭ��',2017,'0',100)
insert Grade values(5,'2018�г�Ӫ��ԭ��',2018,'0',100)
insert Grade values(5,'2019�г�Ӫ��ԭ��',2019,'0',100)

insert Grade values(6,'2016��������缼��',2016,'0',110)
insert Grade values(6,'2017��������缼��',2017,'0',110)
insert Grade values(6,'2018��������缼��',2018,'0',110)
insert Grade values(6,'2019��������缼��',2019,'0',110)

insert Grade values(7,'2016������Ӧ�û���',2016,'0',110)
insert Grade values(7,'2017������Ӧ�û���',2017,'0',110)
insert Grade values(7,'2018������Ӧ�û���',2018,'0',110)
insert Grade values(7,'2019������Ӧ�û���',2019,'0',110)

insert Grade values(8,'2016�������',2016,'0',110)
insert Grade values(8,'2017�������',2017,'0',110)
insert Grade values(8,'2018�������',2018,'0',110)
insert Grade values(8,'2019�������',2019,'0',110)

insert Grade values(9,'2016Ƕ��ʽ��ƿ���',2016,'0',110)
insert Grade values(9,'2017Ƕ��ʽ��ƿ���',2017,'0',110)
insert Grade values(9,'2018Ƕ��ʽ��ƿ���',2018,'0',110)
insert Grade values(9,'2019Ƕ��ʽ��ƿ���',2019,'0',110)

insert Grade values(10,'2016��׿Ӧ�ü�������',2016,'0',110)
insert Grade values(10,'2017��׿Ӧ�ü�������',2017,'0',110)
insert Grade values(10,'2018��׿Ӧ�ü�������',2018,'0',110)
insert Grade values(10,'2019��׿Ӧ�ü�������',2019,'0',110)

insert Grade values(11,'2016��ҵ���',2016,'0',120)
insert Grade values(11,'2017��ҵ���',2017,'0',120)
insert Grade values(11,'2018��ҵ���',2018,'0',120)
insert Grade values(11,'2019��ҵ���',2019,'0',120)

insert Grade values(12,'2016���ʻ��',2016,'0',120)
insert Grade values(12,'2017���ʻ��',2017,'0',120)
insert Grade values(12,'2018���ʻ��',2018,'0',120)
insert Grade values(12,'2019���ʻ��',2019,'0',120)

insert Grade values(13,'2016ע����ʦ',2016,'0',120)
insert Grade values(13,'2017ע����ʦ',2017,'0',120)
insert Grade values(13,'2018ע����ʦ',2018,'0',120)
insert Grade values(13,'2019ע����ʦ',2019,'0',120)

insert Grade values(14,'2016�������������',2016,'0',120)
insert Grade values(14,'2017�������������',2017,'0',120)
insert Grade values(14,'2018�������������',2018,'0',120)
insert Grade values(14,'2019�������������',2019,'0',120)

insert Grade values(15,'2016�������',2016,'0',120)
insert Grade values(15,'2017�������',2017,'0',120)
insert Grade values(15,'2018�������',2018,'0',120)
insert Grade values(15,'2019�������',2019,'0',120)

insert Grade values(16,'2016����ѧ����',2019,'0',130)
insert Grade values(16,'2017����ѧ����',2019,'0',130)
insert Grade values(16,'2018����ѧ����',2019,'0',130)
insert Grade values(16,'2019����ѧ����',2019,'0',130)

insert Grade values(17,'2016���ι���ѧ',2016,'0',130)
insert Grade values(17,'2017���ι���ѧ',2017,'0',130)
insert Grade values(17,'2018���ι���ѧ',2018,'0',130)
insert Grade values(17,'2019���ι���ѧ',2019,'0',130)

insert Grade values(18,'2016���������뷨��',2016,'0',130)
insert Grade values(18,'2017���������뷨��',2017,'0',130)
insert Grade values(18,'2018���������뷨��',2018,'0',130)
insert Grade values(18,'2019���������뷨��',2019,'0',130)

insert Grade values(19,'2016�Ƶ����ѧ',2016,'0',130)
insert Grade values(19,'2017�Ƶ����ѧ',2017,'0',130)
insert Grade values(19,'2018�Ƶ����ѧ',2018,'0',130)
insert Grade values(19,'2019�Ƶ����ѧ',2019,'0',130)

insert Grade values(20,'2016���ξ���ѧ',2016,'0',130)
insert Grade values(20,'2017���ξ���ѧ',2017,'0',130)
insert Grade values(20,'2018���ξ���ѧ',2018,'0',130)
insert Grade values(20,'2019���ξ���ѧ',2019,'0',130)

insert Grade values(21,'2016�������',2016,'0',140)
insert Grade values(21,'2017�������',2017,'0',140)
insert Grade values(21,'2018�������',2018,'0',140)
insert Grade values(21,'2019�������',2019,'0',140)

insert Grade values(22,'2016�Ӿ��������',2016,'0',140)
insert Grade values(22,'2017�Ӿ��������',2017,'0',140)
insert Grade values(22,'2018�Ӿ��������',2018,'0',140)
insert Grade values(22,'2019�Ӿ��������',2019,'0',140)

insert Grade values(23,'2016��װ��������',2016,'0',140)
insert Grade values(23,'2017��װ��������',2017,'0',140)
insert Grade values(23,'2018��װ��������',2018,'0',140)
insert Grade values(23,'2019��װ��������',2019,'0',140)

insert Grade values(24,'2016����ѧ',2016,'0',140)
insert Grade values(24,'2017����ѧ',2017,'0',140)
insert Grade values(24,'2018����ѧ',2018,'0',140)
insert Grade values(24,'2019����ѧ',2019,'0',140)

insert Grade values(25,'2016����ѧ',2016,'0',140)
insert Grade values(25,'2017����ѧ',2017,'0',140)
insert Grade values(25,'2018����ѧ',2018,'0',140)
insert Grade values(25,'2019����ѧ',2019,'0',140)

insert Class values('2016�������������1��',2016,'0') 
insert Class values('2017�������������1��',2017,'0') 
insert Class values('2018�������������1��',2018,'0') 
insert Class values('2019�������������1��',2019,'0') 

insert Class values('2016������ѧ1��',2016,'0') 
insert Class values('2017������ѧ1��',2017,'0') 
insert Class values('2018������ѧ1��',2018,'0') 
insert Class values('2019������ѧ1��',2019,'0') 

insert Class values('2016��������ҵ�ŵ�1��',2016,'0') 
insert Class values('2017��������ҵ�ŵ�1��',2017,'0') 
insert Class values('2018��������ҵ�ŵ�1��',2018,'0') 
insert Class values('2019��������ҵ�ŵ�1��',2019,'0') 

insert Class values('2016��ͳ��ѧԭ��1��',2016,'0') 
insert Class values('2017��ͳ��ѧԭ��1��',2017,'0') 
insert Class values('2018��ͳ��ѧԭ��1��',2018,'0') 
insert Class values('2019��ͳ��ѧԭ��1��',2019,'0') 

insert Class values('2016���г�Ӫ��ԭ��1��',2016,'0') 
insert Class values('2017���г�Ӫ��ԭ��1��',2017,'0') 
insert Class values('2018���г�Ӫ��ԭ��1��',2018,'0') 
insert Class values('2019���г�Ӫ��ԭ��1��',2019,'0') 

insert Class values('2016����������缼��1��',2016,'0') 
insert Class values('2017����������缼��1��',2017,'0') 
insert Class values('2018����������缼��1��',2018,'0') 
insert Class values('2019����������缼��1��',2019,'0')

insert Class values('2016��������Ӧ�û���1��',2016,'0') 
insert Class values('2017��������Ӧ�û���1��',2017,'0') 
insert Class values('2018��������Ӧ�û���1��',2018,'0') 
insert Class values('2019��������Ӧ�û���1��',2019,'0')  

insert Class values('2016���������1��',2016,'0') 
insert Class values('2017���������1��',2017,'0') 
insert Class values('2018���������1��',2018,'0') 
insert Class values('2019���������1��',2019,'0') 

insert Class values('2016��Ƕ��ʽ��ƿ���1��',2016,'0') 
insert Class values('2017��Ƕ��ʽ��ƿ���1��',2017,'0') 
insert Class values('2018��Ƕ��ʽ��ƿ���1��',2018,'0') 
insert Class values('2019��Ƕ��ʽ��ƿ���1��',2019,'0') 

insert Class values('2016����׿Ӧ�ü�������1��',2016,'0') 
insert Class values('2017����׿Ӧ�ü�������1��',2017,'0') 
insert Class values('2018����׿Ӧ�ü�������1��',2018,'0') 
insert Class values('2019����׿Ӧ�ü�������1��',2019,'0') 

insert Class values('2016����ҵ���1��',2016,'0') 
insert Class values('2017����ҵ���1��',2017,'0') 
insert Class values('2018����ҵ���1��',2018,'0') 
insert Class values('2019����ҵ���1��',2019,'0') 

insert Class values('2016�����ʻ��1��',2016,'0') 
insert Class values('2017�����ʻ��1��',2017,'0') 
insert Class values('2018�����ʻ��1��',2018,'0') 
insert Class values('2019�����ʻ��1��',2019,'0') 

insert Class values('2016��ע����ʦ1��',2016,'0') 
insert Class values('2017��ע����ʦ1��',2017,'0') 
insert Class values('2018��ע����ʦ1��',2018,'0') 
insert Class values('2019��ע����ʦ1��',2019,'0') 

insert Class values('2016���������������1��',2016,'0') 
insert Class values('2017���������������1��',2017,'0') 
insert Class values('2018���������������1��',2018,'0') 
insert Class values('2019���������������1��',2019,'0') 

insert Class values('2016���������1��',2016,'0') 
insert Class values('2017���������1��',2017,'0') 
insert Class values('2018���������1��',2018,'0') 
insert Class values('2019���������1��',2019,'0') 

insert Class values('2016������ѧ����1��',2016,'0') 
insert Class values('2017������ѧ����1��',2017,'0') 
insert Class values('2018������ѧ����1��',2018,'0') 
insert Class values('2019������ѧ����1��',2019,'0') 

insert Class values('2016�����ι���ѧ1��',2016,'0') 
insert Class values('2017�����ι���ѧ1��',2017,'0') 
insert Class values('2018�����ι���ѧ1��',2018,'0') 
insert Class values('2019�����ι���ѧ1��',2019,'0') 

insert Class values('2016�����������뷨��1��',2016,'0') 
insert Class values('2017�����������뷨��1��',2017,'0') 
insert Class values('2018�����������뷨��1��',2018,'0') 
insert Class values('2019�����������뷨��1��',2019,'0') 

insert Class values('2016���Ƶ����ѧ1��',2016,'0') 
insert Class values('2017���Ƶ����ѧ1��',2017,'0') 
insert Class values('2018���Ƶ����ѧ1��',2018,'0') 
insert Class values('2019���Ƶ����ѧ1��',2019,'0') 

insert Class values('2016�����ξ���ѧ1��',2016,'0') 
insert Class values('2017�����ξ���ѧ1��',2017,'0') 
insert Class values('2018�����ξ���ѧ1��',2018,'0') 
insert Class values('2019�����ξ���ѧ1��',2019,'0') 

insert Class values('2016���������1��',2016,'0') 
insert Class values('2017���������1��',2017,'0') 
insert Class values('2018���������1��',2018,'0') 
insert Class values('2019���������1��',2019,'0') 

insert Class values('2016���Ӿ��������1��',2016,'0') 
insert Class values('2017���Ӿ��������1��',2017,'0') 
insert Class values('2018���Ӿ��������1��',2018,'0') 
insert Class values('2019���Ӿ��������1��',2019,'0') 

insert Class values('2016����װ��������1��',2016,'0') 
insert Class values('2017����װ��������1��',2017,'0') 
insert Class values('2018����װ��������1��',2018,'0') 
insert Class values('2019����װ��������1��',2019,'0') 

insert Class values('2016������ѧ1��',2016,'0') 
insert Class values('2017������ѧ1��',2017,'0') 
insert Class values('2018������ѧ1��',2018,'0') 
insert Class values('2019������ѧ1��',2019,'0')

insert Class values('2016������ѧ1��',2016,'0') 
insert Class values('2017������ѧ1��',2017,'0') 
insert Class values('2018������ѧ1��',2018,'0') 
insert Class values('2019������ѧ1��',2019,'0')

create table optionStem(
	optionId int primary key,
	optionName nvarchar(1000) not null,
	optionA nvarchar(20) not null,
	optionB nvarchar(20) not null,
	optionC nvarchar(20) not null,
	optionD nvarchar(20) not null,
	optionCorrect nvarchar() not null,
	optionScore int not null,
	pId int 
)

insert optionStem values(1,'java��ȫ��( )��','javaScript','Java','Ja','vav','B',3,8)
insert optionStem values(2,'����ʸ�֤������һ��ǵ�( )��','����','�м�','�߼�','�ǻҼ�','D',3,13)
insert optionStem values(3,'asp.net�����������ĸ�רҵ( )��','��������缼��','���','���','������','A',3,6)
insert optionStem values(4,'���㻯�����������ĸ�ϵ( )��','���洫ý','���','��ó����','����','C',3,14)
select * from optionStem
--�Ծ��

select * from Grade
select * from Student
select * from Teacher
select * from Office
select * from Faculty
select * from Professional where fId=100
select gNo from Grade where fId=100 group by gNo
select * from Class

select cName from Class c 
inner join Grade g on g.gNo=c.gNo 
inner join Faculty f on f.fId=c.fId
join Professional p on p.fId=f.fId 
where f.fId=100 and  g.gNo=2016 and p.pId=7 group by cName

select cName from Class c join Professional p on c.pId=p.pId  where p.pId=7 and gNo=2016

select s.stuId,userName,fName,pName,g.gNo from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on p.fId=g.fId left join Class c on c.gNo=g.gNo where g.gNo=2016  group by s.stuId,userName,fName,pName,g.gNo 
 
 select s.stuId,userName,fName,pName,g.gNo,cName from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where g.gNo=2016 and pName='�����������' and cName='2016�������������1��' group by s.stuId,userName,fName,pName,g.gNo,c.cName

 select s.stuId,userName,fName,pName,g.gNo,cName from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo group by s.stuId,userName,fName,pName,g.gNo,cName

select s.stuId,userName,fName,pName,g.gNo,cName from Student s  left join Faculty f on s.fId=f.fId left join Professional p on f.fId=p.fId left join Grade g  on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where g.gNo=2016 and pName='����ѧ' and cName='2016������ѧ1��' group by s.stuId,userName,fName,pName,g.gNo,c.cName

select count(*) from optionStem where pId=6
select * from optionStem o join Student s on s.pId=o.pId where s.pid=6 
select s.pId from Professional p join Student s on p.pId=s.pId where userName='Mark' and pwd='123456'

select sum(optionScore) from optionStem where  pId=6
select optionScore from optionStem where optionName='java��ȫ��()'and optionCorrect='0' or optionName='��ҳ�ű�������()' and optionCorrect='A'

select stuId,userName,Fraction,f.fId,p.pId,cName from Student s join Faculty f on f.fId=s.fId join Professional p on p.fId=f.fId join Class c on c.fId=p.fId  where userName='Mark' and pwd='123456'
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and optionId=0
select optionId,optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem
select * from optionStem
update optionStem set isDelete=1 where optionId=0
select count(distinct uid) from ���� group by aid
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=8 or optionId=10 or optionId=11 or optionId=17 or optionId=1 or optionId=17 or optionId=16 or optionId=13 or optionId=1 or optionId=10 or optionId=5 or optionId=13 or optionId=1 or optionId=15 or optionId=0 or optionId=0 or optionId=18 or optionId=17 or optionId=12 or optionId=1
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=4 or optionId=6 or optionId=15 or optionId=19 or optionId=3 or optionId=11 or optionId=3 or optionId=2 or optionId=5 or optionId=6 or optionId=3 or optionId=11 or optionId=1 or optionId=18 or optionId=1 or optionId=12 or optionId=4 or optionId=10 or optionId=6 or optionId=5
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=0 or optionId=2 or optionId=10 or optionId=17 or optionId=5 or optionId=7 or optionId=9 or optionId=6 or optionId=15 or optionId=20 or optionId=8 or optionId=14 or optionId=11 or optionId=18 or optionId=4 or optionId=1 or optionId=3 or optionId=13 or optionId=16 or optionId=12
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=0 or optionId=4 or optionId=11 or optionId=15 or optionId=6 or optionId=12 or optionId=3 or optionId=20 or optionId=17 or optionId=8 or optionId=5 or optionId=9 or optionId=7 or optionId=10 or optionId=16 or optionId=1 or optionId=18 or optionId=14 or optionId=19 or optionId=13
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=9 or optionId=10 or optionId=4 or optionId=20 or optionId=5 or optionId=7 or optionId=12 or optionId=19 or optionId=8 or optionId=1 or optionId=17 or optionId=14 or optionId=2 or optionId=13 or optionId=18 or optionId=16 or optionId=3 or optionId=11 or optionId=6 or optionId=15
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=5 or optionId=7 or optionId=15 or optionId=9 or optionId=8 or optionId=11 or optionId=1 or optionId=12 or optionId=4 or optionId=18 or optionId=14 or optionId=10 or optionId=16 or optionId=3 or optionId=20 or optionId=6 or optionId=13 or optionId=17 or optionId=19 or optionId=2
select tId,userName,fName,pName,gNo,cName from Teacher t join Faculty f on t.fId=f.fId join Professional p on p.pId=t.pId join Class c on c.cId=t.cId
update Teacher set userName='li',pId='��ó����ϵ',fId='�����������',cId='2016�������������1��'  where tId=1
update Teacher set userName='Lily',pName=��ó����ϵ,pName=�����������,cName=2016�������������1��  where tId=1

update Teacher  set userName='Lily',fName='���洫ýϵ',pName='������Ӧ�û���',cName='2016��������Ӧ�û���1��'
 from 
 Faculty, 
Professional,
Class
 where tId=1 and Faculty.fId=Teacher.fId and Professional.pId=Teacher.pId and Class.cId=Teacher.cId