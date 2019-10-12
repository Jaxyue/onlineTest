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
insert Student values('Tom','123456',1,1,2016,'0','0','个人中心,考试管理,成绩管理')
insert Teacher values('Lily','123456',1,1,'0','个人中心,考试管理,成绩管理,试卷管理,试题管理')
insert Office values('Sam','123456','个人中心,考试管理,成绩管理,试卷管理,试题管理,院系管理,专业管理,科目管理,年级管理,班级管理,教师管理,学生管理')
insert Faculty values('商贸管理系','0',1)
insert Faculty values('出版传媒系','0',1)
insert Faculty values('会计学院','0',1)
insert Faculty values('餐饮旅游学院','0',1)
insert Faculty values('艺术与设计学院','0',1)
select * from Faculty
insert Professional values(1,'电子商务基础','0',100)
insert Professional values(2,'管理学','0',100)
insert Professional values(3,'连锁企业门店营运管理','0',100)
insert Professional values(4,'统计学原理','0',100)
insert Professional values(5,'市场营销原理','0',100)

insert Professional values(6,'计算机网络技术','0',110)
insert Professional values(7,'大数据应用基础','0',110)
insert Professional values(8,'软件开发','0',110)
insert Professional values(9,'嵌入式设计开发','0',110)
insert Professional values(10,'安卓应用技术开发','0',110)

insert Professional values(11,'企业会计','0',120)
insert Professional values(12,'国际会计','0',120)
insert Professional values(13,'注册会计师','0',120)
insert Professional values(14,'计算机与财务管理','0',120)
insert Professional values(15,'财务管理','0',120)

insert Professional values(16,'旅游学概论','0',130)
insert Professional values(17,'旅游管理学','0',130)
insert Professional values(18,'旅游政策与法规','0',130)
insert Professional values(19,'酒店管理学','0',130)
insert Professional values(20,'旅游经济学','0',130)

insert Professional values(21,'环境设计','0',140)
insert Professional values(22,'视觉传达设计','0',140)
insert Professional values(23,'服装与服饰设计','0',140)
insert Professional values(24,'音乐学','0',140)
insert Professional values(25,'美术学','0',140)

select * from Professional
insert Grade values(1,'2016级电子商务基础',2016,'0',100)
insert Grade values(1,'2017级电子商务基础',2017,'0',100)
insert Grade values(1,'2018级电子商务基础',2018,'0',100)
insert Grade values(1,'2019级电子商务基础',2019,'0',100)

insert Grade values(2,'2016管理学',2016,'0',100)
insert Grade values(2,'2017管理学',2017,'0',100)
insert Grade values(2,'2018管理学',2018,'0',100)
insert Grade values(2,'2019管理学',2019,'0',100)

insert Grade values(2016,'0')
insert Grade values(2017,'0')
insert Grade values(2018,'0')
insert Grade values(2019,'0')

insert Grade values(4,'2016统计学原理',2016,'0',100)
insert Grade values(4,'2017统计学原理',2017,'0',100)
insert Grade values(4,'2018统计学原理',2018,'0',100)
insert Grade values(4,'2019统计学原理',2019,'0',100)

insert Grade values(5,'2016市场营销原理',2016,'0',100)
insert Grade values(5,'2017市场营销原理',2017,'0',100)
insert Grade values(5,'2018市场营销原理',2018,'0',100)
insert Grade values(5,'2019市场营销原理',2019,'0',100)

insert Grade values(6,'2016计算机网络技术',2016,'0',110)
insert Grade values(6,'2017计算机网络技术',2017,'0',110)
insert Grade values(6,'2018计算机网络技术',2018,'0',110)
insert Grade values(6,'2019计算机网络技术',2019,'0',110)

insert Grade values(7,'2016大数据应用基础',2016,'0',110)
insert Grade values(7,'2017大数据应用基础',2017,'0',110)
insert Grade values(7,'2018大数据应用基础',2018,'0',110)
insert Grade values(7,'2019大数据应用基础',2019,'0',110)

insert Grade values(8,'2016软件开发',2016,'0',110)
insert Grade values(8,'2017软件开发',2017,'0',110)
insert Grade values(8,'2018软件开发',2018,'0',110)
insert Grade values(8,'2019软件开发',2019,'0',110)

insert Grade values(9,'2016嵌入式设计开发',2016,'0',110)
insert Grade values(9,'2017嵌入式设计开发',2017,'0',110)
insert Grade values(9,'2018嵌入式设计开发',2018,'0',110)
insert Grade values(9,'2019嵌入式设计开发',2019,'0',110)

insert Grade values(10,'2016安卓应用技术开发',2016,'0',110)
insert Grade values(10,'2017安卓应用技术开发',2017,'0',110)
insert Grade values(10,'2018安卓应用技术开发',2018,'0',110)
insert Grade values(10,'2019安卓应用技术开发',2019,'0',110)

insert Grade values(11,'2016企业会计',2016,'0',120)
insert Grade values(11,'2017企业会计',2017,'0',120)
insert Grade values(11,'2018企业会计',2018,'0',120)
insert Grade values(11,'2019企业会计',2019,'0',120)

insert Grade values(12,'2016国际会计',2016,'0',120)
insert Grade values(12,'2017国际会计',2017,'0',120)
insert Grade values(12,'2018国际会计',2018,'0',120)
insert Grade values(12,'2019国际会计',2019,'0',120)

insert Grade values(13,'2016注册会计师',2016,'0',120)
insert Grade values(13,'2017注册会计师',2017,'0',120)
insert Grade values(13,'2018注册会计师',2018,'0',120)
insert Grade values(13,'2019注册会计师',2019,'0',120)

insert Grade values(14,'2016计算机与财务管理',2016,'0',120)
insert Grade values(14,'2017计算机与财务管理',2017,'0',120)
insert Grade values(14,'2018计算机与财务管理',2018,'0',120)
insert Grade values(14,'2019计算机与财务管理',2019,'0',120)

insert Grade values(15,'2016财务管理',2016,'0',120)
insert Grade values(15,'2017财务管理',2017,'0',120)
insert Grade values(15,'2018财务管理',2018,'0',120)
insert Grade values(15,'2019财务管理',2019,'0',120)

insert Grade values(16,'2016旅游学概论',2019,'0',130)
insert Grade values(16,'2017旅游学概论',2019,'0',130)
insert Grade values(16,'2018旅游学概论',2019,'0',130)
insert Grade values(16,'2019旅游学概论',2019,'0',130)

insert Grade values(17,'2016旅游管理学',2016,'0',130)
insert Grade values(17,'2017旅游管理学',2017,'0',130)
insert Grade values(17,'2018旅游管理学',2018,'0',130)
insert Grade values(17,'2019旅游管理学',2019,'0',130)

insert Grade values(18,'2016旅游政策与法规',2016,'0',130)
insert Grade values(18,'2017旅游政策与法规',2017,'0',130)
insert Grade values(18,'2018旅游政策与法规',2018,'0',130)
insert Grade values(18,'2019旅游政策与法规',2019,'0',130)

insert Grade values(19,'2016酒店管理学',2016,'0',130)
insert Grade values(19,'2017酒店管理学',2017,'0',130)
insert Grade values(19,'2018酒店管理学',2018,'0',130)
insert Grade values(19,'2019酒店管理学',2019,'0',130)

insert Grade values(20,'2016旅游经济学',2016,'0',130)
insert Grade values(20,'2017旅游经济学',2017,'0',130)
insert Grade values(20,'2018旅游经济学',2018,'0',130)
insert Grade values(20,'2019旅游经济学',2019,'0',130)

insert Grade values(21,'2016环境设计',2016,'0',140)
insert Grade values(21,'2017环境设计',2017,'0',140)
insert Grade values(21,'2018环境设计',2018,'0',140)
insert Grade values(21,'2019环境设计',2019,'0',140)

insert Grade values(22,'2016视觉传达设计',2016,'0',140)
insert Grade values(22,'2017视觉传达设计',2017,'0',140)
insert Grade values(22,'2018视觉传达设计',2018,'0',140)
insert Grade values(22,'2019视觉传达设计',2019,'0',140)

insert Grade values(23,'2016服装与服饰设计',2016,'0',140)
insert Grade values(23,'2017服装与服饰设计',2017,'0',140)
insert Grade values(23,'2018服装与服饰设计',2018,'0',140)
insert Grade values(23,'2019服装与服饰设计',2019,'0',140)

insert Grade values(24,'2016音乐学',2016,'0',140)
insert Grade values(24,'2017音乐学',2017,'0',140)
insert Grade values(24,'2018音乐学',2018,'0',140)
insert Grade values(24,'2019音乐学',2019,'0',140)

insert Grade values(25,'2016美术学',2016,'0',140)
insert Grade values(25,'2017美术学',2017,'0',140)
insert Grade values(25,'2018美术学',2018,'0',140)
insert Grade values(25,'2019美术学',2019,'0',140)

insert Class values('2016级电子商务基础1班',2016,'0') 
insert Class values('2017级电子商务基础1班',2017,'0') 
insert Class values('2018级电子商务基础1班',2018,'0') 
insert Class values('2019级电子商务基础1班',2019,'0') 

insert Class values('2016级管理学1班',2016,'0') 
insert Class values('2017级管理学1班',2017,'0') 
insert Class values('2018级管理学1班',2018,'0') 
insert Class values('2019级管理学1班',2019,'0') 

insert Class values('2016级连锁企业门店1班',2016,'0') 
insert Class values('2017级连锁企业门店1班',2017,'0') 
insert Class values('2018级连锁企业门店1班',2018,'0') 
insert Class values('2019级连锁企业门店1班',2019,'0') 

insert Class values('2016级统计学原理1班',2016,'0') 
insert Class values('2017级统计学原理1班',2017,'0') 
insert Class values('2018级统计学原理1班',2018,'0') 
insert Class values('2019级统计学原理1班',2019,'0') 

insert Class values('2016级市场营销原理1班',2016,'0') 
insert Class values('2017级市场营销原理1班',2017,'0') 
insert Class values('2018级市场营销原理1班',2018,'0') 
insert Class values('2019级市场营销原理1班',2019,'0') 

insert Class values('2016级计算机网络技术1班',2016,'0') 
insert Class values('2017级计算机网络技术1班',2017,'0') 
insert Class values('2018级计算机网络技术1班',2018,'0') 
insert Class values('2019级计算机网络技术1班',2019,'0')

insert Class values('2016级大数据应用基础1班',2016,'0') 
insert Class values('2017级大数据应用基础1班',2017,'0') 
insert Class values('2018级大数据应用基础1班',2018,'0') 
insert Class values('2019级大数据应用基础1班',2019,'0')  

insert Class values('2016级软件开发1班',2016,'0') 
insert Class values('2017级软件开发1班',2017,'0') 
insert Class values('2018级软件开发1班',2018,'0') 
insert Class values('2019级软件开发1班',2019,'0') 

insert Class values('2016级嵌入式设计开发1班',2016,'0') 
insert Class values('2017级嵌入式设计开发1班',2017,'0') 
insert Class values('2018级嵌入式设计开发1班',2018,'0') 
insert Class values('2019级嵌入式设计开发1班',2019,'0') 

insert Class values('2016级安卓应用技术开发1班',2016,'0') 
insert Class values('2017级安卓应用技术开发1班',2017,'0') 
insert Class values('2018级安卓应用技术开发1班',2018,'0') 
insert Class values('2019级安卓应用技术开发1班',2019,'0') 

insert Class values('2016级企业会计1班',2016,'0') 
insert Class values('2017级企业会计1班',2017,'0') 
insert Class values('2018级企业会计1班',2018,'0') 
insert Class values('2019级企业会计1班',2019,'0') 

insert Class values('2016级国际会计1班',2016,'0') 
insert Class values('2017级国际会计1班',2017,'0') 
insert Class values('2018级国际会计1班',2018,'0') 
insert Class values('2019级国际会计1班',2019,'0') 

insert Class values('2016级注册会计师1班',2016,'0') 
insert Class values('2017级注册会计师1班',2017,'0') 
insert Class values('2018级注册会计师1班',2018,'0') 
insert Class values('2019级注册会计师1班',2019,'0') 

insert Class values('2016级计算机与财务管理1班',2016,'0') 
insert Class values('2017级计算机与财务管理1班',2017,'0') 
insert Class values('2018级计算机与财务管理1班',2018,'0') 
insert Class values('2019级计算机与财务管理1班',2019,'0') 

insert Class values('2016级财务管理1班',2016,'0') 
insert Class values('2017级财务管理1班',2017,'0') 
insert Class values('2018级财务管理1班',2018,'0') 
insert Class values('2019级财务管理1班',2019,'0') 

insert Class values('2016级旅游学概论1班',2016,'0') 
insert Class values('2017级旅游学概论1班',2017,'0') 
insert Class values('2018级旅游学概论1班',2018,'0') 
insert Class values('2019级旅游学概论1班',2019,'0') 

insert Class values('2016级旅游管理学1班',2016,'0') 
insert Class values('2017级旅游管理学1班',2017,'0') 
insert Class values('2018级旅游管理学1班',2018,'0') 
insert Class values('2019级旅游管理学1班',2019,'0') 

insert Class values('2016级旅游政策与法规1班',2016,'0') 
insert Class values('2017级旅游政策与法规1班',2017,'0') 
insert Class values('2018级旅游政策与法规1班',2018,'0') 
insert Class values('2019级旅游政策与法规1班',2019,'0') 

insert Class values('2016级酒店管理学1班',2016,'0') 
insert Class values('2017级酒店管理学1班',2017,'0') 
insert Class values('2018级酒店管理学1班',2018,'0') 
insert Class values('2019级酒店管理学1班',2019,'0') 

insert Class values('2016级旅游经济学1班',2016,'0') 
insert Class values('2017级旅游经济学1班',2017,'0') 
insert Class values('2018级旅游经济学1班',2018,'0') 
insert Class values('2019级旅游经济学1班',2019,'0') 

insert Class values('2016级环境设计1班',2016,'0') 
insert Class values('2017级环境设计1班',2017,'0') 
insert Class values('2018级环境设计1班',2018,'0') 
insert Class values('2019级环境设计1班',2019,'0') 

insert Class values('2016级视觉传达设计1班',2016,'0') 
insert Class values('2017级视觉传达设计1班',2017,'0') 
insert Class values('2018级视觉传达设计1班',2018,'0') 
insert Class values('2019级视觉传达设计1班',2019,'0') 

insert Class values('2016级服装与服饰设计1班',2016,'0') 
insert Class values('2017级服装与服饰设计1班',2017,'0') 
insert Class values('2018级服装与服饰设计1班',2018,'0') 
insert Class values('2019级服装与服饰设计1班',2019,'0') 

insert Class values('2016级音乐学1班',2016,'0') 
insert Class values('2017级音乐学1班',2017,'0') 
insert Class values('2018级音乐学1班',2018,'0') 
insert Class values('2019级音乐学1班',2019,'0')

insert Class values('2016级美术学1班',2016,'0') 
insert Class values('2017级美术学1班',2017,'0') 
insert Class values('2018级美术学1班',2018,'0') 
insert Class values('2019级美术学1班',2019,'0')

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

insert optionStem values(1,'java的全称( )？','javaScript','Java','Ja','vav','B',3,8)
insert optionStem values(2,'会计资格证下列哪一项不是的( )？','初级','中级','高级','骨灰级','D',3,13)
insert optionStem values(3,'asp.net是属于下面哪个专业( )？','计算机网络技术','烹调','会计','大数据','A',3,6)
insert optionStem values(4,'电算化是属于下面哪个系( )？','出版传媒','会计','商贸管理','工造','C',3,14)
select * from optionStem
--试卷表

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
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where g.gNo=2016 and pName='电子商务基础' and cName='2016级电子商务基础1班' group by s.stuId,userName,fName,pName,g.gNo,c.cName

 select s.stuId,userName,fName,pName,g.gNo,cName from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo group by s.stuId,userName,fName,pName,g.gNo,cName

select s.stuId,userName,fName,pName,g.gNo,cName from Student s  left join Faculty f on s.fId=f.fId left join Professional p on f.fId=p.fId left join Grade g  on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where g.gNo=2016 and pName='管理学' and cName='2016级管理学1班' group by s.stuId,userName,fName,pName,g.gNo,c.cName

select count(*) from optionStem where pId=6
select * from optionStem o join Student s on s.pId=o.pId where s.pid=6 
select s.pId from Professional p join Student s on p.pId=s.pId where userName='Mark' and pwd='123456'

select sum(optionScore) from optionStem where  pId=6
select optionScore from optionStem where optionName='java的全称()'and optionCorrect='0' or optionName='网页脚本语言是()' and optionCorrect='A'

select stuId,userName,Fraction,f.fId,p.pId,cName from Student s join Faculty f on f.fId=s.fId join Professional p on p.fId=f.fId join Class c on c.fId=p.fId  where userName='Mark' and pwd='123456'
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and optionId=0
select optionId,optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem
select * from optionStem
update optionStem set isDelete=1 where optionId=0
select count(distinct uid) from 表名 group by aid
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=8 or optionId=10 or optionId=11 or optionId=17 or optionId=1 or optionId=17 or optionId=16 or optionId=13 or optionId=1 or optionId=10 or optionId=5 or optionId=13 or optionId=1 or optionId=15 or optionId=0 or optionId=0 or optionId=18 or optionId=17 or optionId=12 or optionId=1
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=4 or optionId=6 or optionId=15 or optionId=19 or optionId=3 or optionId=11 or optionId=3 or optionId=2 or optionId=5 or optionId=6 or optionId=3 or optionId=11 or optionId=1 or optionId=18 or optionId=1 or optionId=12 or optionId=4 or optionId=10 or optionId=6 or optionId=5
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=0 or optionId=2 or optionId=10 or optionId=17 or optionId=5 or optionId=7 or optionId=9 or optionId=6 or optionId=15 or optionId=20 or optionId=8 or optionId=14 or optionId=11 or optionId=18 or optionId=4 or optionId=1 or optionId=3 or optionId=13 or optionId=16 or optionId=12
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=0 or optionId=4 or optionId=11 or optionId=15 or optionId=6 or optionId=12 or optionId=3 or optionId=20 or optionId=17 or optionId=8 or optionId=5 or optionId=9 or optionId=7 or optionId=10 or optionId=16 or optionId=1 or optionId=18 or optionId=14 or optionId=19 or optionId=13
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=9 or optionId=10 or optionId=4 or optionId=20 or optionId=5 or optionId=7 or optionId=12 or optionId=19 or optionId=8 or optionId=1 or optionId=17 or optionId=14 or optionId=2 or optionId=13 or optionId=18 or optionId=16 or optionId=3 or optionId=11 or optionId=6 or optionId=15
select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId=6 and   optionId=5 or optionId=7 or optionId=15 or optionId=9 or optionId=8 or optionId=11 or optionId=1 or optionId=12 or optionId=4 or optionId=18 or optionId=14 or optionId=10 or optionId=16 or optionId=3 or optionId=20 or optionId=6 or optionId=13 or optionId=17 or optionId=19 or optionId=2
select tId,userName,fName,pName,gNo,cName from Teacher t join Faculty f on t.fId=f.fId join Professional p on p.pId=t.pId join Class c on c.cId=t.cId
update Teacher set userName='li',pId='商贸管理系',fId='电子商务基础',cId='2016级电子商务基础1班'  where tId=1
update Teacher set userName='Lily',pName=商贸管理系,pName=电子商务基础,cName=2016级电子商务基础1班  where tId=1

update Teacher  set userName='Lily',fName='出版传媒系',pName='大数据应用基础',cName='2016级大数据应用基础1班'
 from 
 Faculty, 
Professional,
Class
 where tId=1 and Faculty.fId=Teacher.fId and Professional.pId=Teacher.pId and Class.cId=Teacher.cId