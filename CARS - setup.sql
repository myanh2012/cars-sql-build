use mnguy467;


create table continents(
	ContId int primary key, 
    Continent char(15)
);

create table countries(
	CountryId smallint primary key,
    CountryName varchar(30),
    Continent int,
    constraint fk_contients foreign key (Continent) references continents(ContId)
);

create table car_makers(
	Id smallint primary key,
    Maker char (15) not null,
    FullName varchar (50) not null,
    Country smallint not null,
    constraint fk_countries foreign key (Country) references countries(CountryId)
);

create table model_list(
	ModelId int primary key,
	Maker smallint not null,
	Model varchar(30) not null unique,
    constraint fk_makers foreign key (Maker) references car_makers(Id) 
);

create table car_names(
	Id int primary key, 
    Model varchar(50) not null,
    Make varchar(200) not null,
    constraint fk_modelList foreign key (model) references model_list(Model)
);

create table cars_data(
	Id int not null,
    MPG double, 
    Cylinders int not null,
    Edispl double not null,
    Horsepower int, 
    Weight int not null, 
    Accelerate double not null,
    Year int not null,
    primary key (Id, Year),
    constraint fk_car foreign key (Id) references car_names(Id)
);




