create table [TblRankingShopMaster]
(
	ShopID smallint primary key,
	ShopName nvarchar(50),
	RankUrl nvarchar(1000),
	RankPeriod nvarchar(50),
	RankNum smallint
)

select * from TblRankingShopMaster

insert into TblRankingShopMaster(ShopID,ShopName,RankUrl,RankPeriod,RankNum)
values(8,'Qoo10','http://list.qoo10.jp/gmkt.inc/BestSellers/?g=1',7,10)

alter table TblRankingShopMaster
alter column RankPeriod smallint

update TblRankingShopMaster
set RankUrl = 'https://fashion.dmkt-sp.jp/information/ranking/index_2.html'
where ShopID = 7

create table TblRankingShopData
(
	ShopID smallint,
	RankDate nvarchar(10),
	Ranking smallint,
	ImageUrl nvarchar(1000),
	ImageFile nvarchar(1000),
	GoodUrl nvarchar(1000),
	GoodName nvarchar(2000),
	GoodPrice decimal(12,2),
	InsertTime datetime default(getdate()),
	InsertHost nvarchar(50) default(host_name()),
	primary key (ShopID,RankDate,Ranking)
)

select * from TblRankingShopData