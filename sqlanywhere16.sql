/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 16                       */
/* Created on:     2018-02-20 19:34:29                          */
/*==============================================================*/


/*==============================================================*/
/* Table: Bar                                                   */
/*==============================================================*/
create table Bar 
(
   ID_Bar               integer                        not null,
   Pizza                char(30)                       null,
   Napoje               char(30)                       null,
   constraint PK_BAR primary key (ID_Bar)
);

comment on table Bar is 
'mozna zamowic pizze i picie';

comment on column Bar.ID_Bar is 
'klucz glowny bar';

comment on column Bar.Pizza is 
'pizze serwowane przez bar';

comment on column Bar.Napoje is 
'napoje serwowane przez bar';

/*==============================================================*/
/* Table: Barman                                                */
/*==============================================================*/
create table Barman 
(
   ID_Barman            integer                        not null,
   ID_Zamowienia        integer                        null,
   ID_Bar               integer                        null,
   Nazwisko             char(30)                       null,
   Imie                 char(30)                       null,
   PESEL                char(11)                       null,
   Ulica                char(40)                       null,
   Miasto               char(40)                       null,
   constraint PK_BARMAN primary key (ID_Barman)
);

comment on table Barman is 
'barman obsluguje zamowienia dotyczace baru';

comment on column Barman.ID_Barman is 
'klucz glowny barman';

comment on column Barman.ID_Zamowienia is 
'klucz glowny zamowienia';

comment on column Barman.ID_Bar is 
'klucz glowny bar';

comment on column Barman.Nazwisko is 
'nazwisko barmana';

comment on column Barman.Imie is 
'imie barmana';

comment on column Barman.PESEL is 
'pesel barmana';

comment on column Barman.Ulica is 
'ulica na ktorej mieszka barman';

comment on column Barman.Miasto is 
'miasto zamieszkania barmana';

/*==============================================================*/
/* Table: Dzial                                                 */
/*==============================================================*/
create table Dzial 
(
   ID_Dzial             integer                        not null,
   Nazwa                char(30)                       not null,
   Miasto               char(30)                       null,
   constraint PK_DZIAL primary key (ID_Dzial)
);

comment on table Dzial is 
'poszczegolne dzialy do ktorych sa przypisani pracownicy ';

comment on column Dzial.ID_Dzial is 
'klucz glowny dzial';

comment on column Dzial.Nazwa is 
'nazwa dzialu';

comment on column Dzial.Miasto is 
'miasto do ktorego sa przypisanie pracownicy z poszczegolnych dzialow';

/*==============================================================*/
/* Table: Gra                                                   */
/*==============================================================*/
create table Gra 
(
   ID_Gra               integer                        not null,
   Tytul                char(30)                       null,
   Producent            char(30)                       null,
   constraint PK_GRA primary key (ID_Gra)
);

comment on table Gra is 
'wybierana przez klienta';

comment on column Gra.ID_Gra is 
'klucz glowny gra';

comment on column Gra.Tytul is 
'tytul gra rekord';

comment on column Gra.Producent is 
'producent gra rekord';

/*==============================================================*/
/* Table: Informacja                                            */
/*==============================================================*/
create table Informacja 
(
   ID_Informacja        integer                        not null,
   ID_Salon             integer                        null,
   ID_Internet          integer                        null,
   ID_Klient            integer                        null,
   Zrodlo               char(30)                       null,
   constraint PK_INFORMACJA primary key (ID_Informacja)
);

comment on table Informacja is 
'Klient znajduje w internecie informacje';

comment on column Informacja.ID_Informacja is 
'klucz glowny informacj';

comment on column Informacja.ID_Salon is 
'klucz glowny salon';

comment on column Informacja.ID_Internet is 
'klucz glowny internet';

comment on column Informacja.ID_Klient is 
'klucz glowny';

comment on column Informacja.Zrodlo is 
'stad klient dowiedzial sie o salonie';

/*==============================================================*/
/* Table: Internet                                              */
/*==============================================================*/
create table Internet 
(
   ID_Internet          integer                        not null,
   Facebook             char(30)                       null,
   Stonainternetowa     char(30)                       null,
   Siecafiliacyjna      char(30)                       null,
   constraint PK_INTERNET primary key (ID_Internet)
);

comment on table Internet is 
'klient dzieki temu ma informacje o marce';

comment on column Internet.ID_Internet is 
'klucz glowny internet';

comment on column Internet.Facebook is 
'internet rekord';

comment on column Internet.Stonainternetowa is 
'charakter informacyjny';

comment on column Internet.Siecafiliacyjna is 
'zrodlo klientow';

/*==============================================================*/
/* Table: Klient                                                */
/*==============================================================*/
create table Klient 
(
   ID_Klient            integer                        not null,
   Nazwisko             char(30)                       null,
   Imie                 char(30)                       null,
   Miasto               char(30)                       null,
   constraint PK_KLIENT primary key (ID_Klient)
);

comment on table Klient is 
'moze dokonac rezerwacji na sprzet lub gre';

comment on column Klient.ID_Klient is 
'klucz glowny';

comment on column Klient.Nazwisko is 
'imie klienta';

comment on column Klient.Imie is 
'nazwisko klienta';

comment on column Klient.Miasto is 
'klient rekord';

/*==============================================================*/
/* Table: Oferta                                                */
/*==============================================================*/
create table Oferta 
(
   ID_Oferta            integer                        not null,
   ID_Ofertagrupowa     integer                        null,
   ID_Salon             integer                        null,
   constraint PK_OFERTA primary key (ID_Oferta)
);

comment on table Oferta is 
'w wielu salonach mozna jednoczesnie korzystac z wielu ofertgrupowych';

comment on column Oferta.ID_Oferta is 
'klucz glowny oferta';

comment on column Oferta.ID_Ofertagrupowa is 
'klucz glowny event';

comment on column Oferta.ID_Salon is 
'klucz glowny salon';

/*==============================================================*/
/* Table: Ofertagrupowa                                         */
/*==============================================================*/
create table Ofertagrupowa 
(
   ID_Ofertagrupowa     integer                        not null,
   Liczbaosob           char(30)                       null,
   Czas                 char(30)                       null,
   Cena                 char(30)                       null,
   constraint PK_OFERTAGRUPOWA primary key (ID_Ofertagrupowa)
);

comment on table Ofertagrupowa is 
'mozna skorzystac z oferty grupowej';

comment on column Ofertagrupowa.ID_Ofertagrupowa is 
'klucz glowny event';

comment on column Ofertagrupowa.Liczbaosob is 
'oferta A ofertagrupowa rekord';

comment on column Ofertagrupowa.Czas is 
'oferta B ofertagrupowa rekord';

comment on column Ofertagrupowa.Cena is 
'oferta C ofertagrupowa rekord';

/*==============================================================*/
/* Table: Pakiet                                                */
/*==============================================================*/
create table Pakiet 
(
   ID_Pakiet            integer                        not null,
   ID_Gra               integer                        null,
   Typ                  char(30)                       null,
   Tryb                 char(30)                       null,
   Kontrolery           char(30)                       null,
   constraint PK_PAKIET primary key (ID_Pakiet)
);

comment on table Pakiet is 
'gra wchodzi w sklad pakietu';

comment on column Pakiet.ID_Pakiet is 
'klucz glowny pakiet';

comment on column Pakiet.ID_Gra is 
'klucz glowny gra';

comment on column Pakiet.Typ is 
'rodzaj gry';

comment on column Pakiet.Tryb is 
'jednego gracza albo wieloosobowy';

comment on column Pakiet.Kontrolery is 
'sorzet wykorzystywany podaczas rozgrywki';

/*==============================================================*/
/* Table: Personel                                              */
/*==============================================================*/
create table Personel 
(
   ID_Personel          integer                        not null,
   ID_Dzial             integer                        null,
   ID_Salon             integer                        null,
   Nazwisko             char(30)                       null,
   Imie                 char(30)                       null,
   PESEL                char(11)                       null,
   Ulica                char(40)                       null,
   Miasto               char(40)                       null,
   Pensja               integer                        null,
   constraint PK_PERSONEL primary key (ID_Personel)
);

comment on table Personel is 
'pracownicy salonu, zbieraja rezerwacje';

comment on column Personel.ID_Personel is 
'klucz glowny personel';

comment on column Personel.ID_Dzial is 
'klucz glowny dzial';

comment on column Personel.ID_Salon is 
'klucz glowny salon';

comment on column Personel.Nazwisko is 
'imie personel';

comment on column Personel.Imie is 
'nazwisko personel';

comment on column Personel.PESEL is 
'pesel personel';

comment on column Personel.Ulica is 
'ulica personel';

comment on column Personel.Miasto is 
'miasto personel';

comment on column Personel.Pensja is 
'pensja pracownika';

/*==============================================================*/
/* Table: Rezerwacja                                            */
/*==============================================================*/
create table Rezerwacja 
(
   ID_Rezerwacja        integer                        not null,
   ID_Gra               integer                        null,
   ID_Klient            integer                        null,
   ID_Sprzet            integer                        null,
   ID_Personel          integer                        null,
   Data_Rezerwacji      date                           not null,
   Godzinaod            time                           null,
   Godzinado            time                           null,
   constraint PK_REZERWACJA primary key (ID_Rezerwacja)
);

comment on table Rezerwacja is 
'klient moze dokonac rezerwacji w salonie';

comment on column Rezerwacja.ID_Rezerwacja is 
'klucz glowny rezerwacja';

comment on column Rezerwacja.ID_Gra is 
'klucz glowny gra';

comment on column Rezerwacja.ID_Klient is 
'klucz glowny';

comment on column Rezerwacja.ID_Sprzet is 
'klucz glowny sprzet';

comment on column Rezerwacja.ID_Personel is 
'klucz glowny personel';

comment on column Rezerwacja.Data_Rezerwacji is 
'rezerwacja rekord';

comment on column Rezerwacja.Godzinaod is 
'rezerwacja rekord';

comment on column Rezerwacja.Godzinado is 
'rezerwacja rekord';

/*==============================================================*/
/* Table: SalonVR                                               */
/*==============================================================*/
create table SalonVR 
(
   ID_Salon             integer                        not null,
   Ulica                char(40)                       null,
   Miasto               char(40)                       null,
   constraint PK_SALONVR primary key (ID_Salon)
);

comment on table SalonVR is 
'w nich organizowane sa eventy, pracuje w nich personel, sa odpowiednio wyposazone w sprzet';

comment on column SalonVR.ID_Salon is 
'klucz glowny salon';

comment on column SalonVR.Ulica is 
'ulica salonu';

comment on column SalonVR.Miasto is 
'miasto salonu';

/*==============================================================*/
/* Table: Sprzet                                                */
/*==============================================================*/
create table Sprzet 
(
   ID_Sprzet            integer                        not null,
   ID_Salon             integer                        null,
   GogleVR              char(30)                       null,
   Samochody            char(30)                       null,
   Karabiny             char(30)                       null,
   constraint PK_SPRZET primary key (ID_Sprzet)
);

comment on table Sprzet is 
'mowi ile sprzetu jest na zamowieniach do salonu';

comment on column Sprzet.ID_Sprzet is 
'klucz glowny sprzet';

comment on column Sprzet.ID_Salon is 
'klucz glowny salon';

comment on column Sprzet.GogleVR is 
'sprzet do symulacj rekord';

comment on column Sprzet.Samochody is 
'samochody sprzet rekord';

comment on column Sprzet.Karabiny is 
'sprzet do symulacji rekord';

/*==============================================================*/
/* Table: Stansprzetu                                           */
/*==============================================================*/
create table Stansprzetu 
(
   ID_Stansprzetu       integer                        not null,
   ID_Salon             integer                        null,
   GogleVR              char(30)                       null,
   Samochody            char(30)                       null,
   Karabiny             char(30)                       null,
   constraint PK_STANSPRZETU primary key (ID_Stansprzetu)
);

comment on table Stansprzetu is 
'mowi o tym ile sprzetu jest ogolnie dostepnego w salonie
';

comment on column Stansprzetu.ID_Stansprzetu is 
'klucz glowny';

comment on column Stansprzetu.ID_Salon is 
'klucz glowny salon';

comment on column Stansprzetu.GogleVR is 
'sprzet';

comment on column Stansprzetu.Samochody is 
'stansprzetu rekord';

comment on column Stansprzetu.Karabiny is 
'pozycjarezerwacji rekord';

/*==============================================================*/
/* Table: Zamowienia                                            */
/*==============================================================*/
create table Zamowienia 
(
   ID_Zamowienia        integer                        not null,
   ID_Klient            integer                        null,
   Godzinazamowienia    time                           null,
   constraint PK_ZAMOWIENIA primary key (ID_Zamowienia)
);

comment on table Zamowienia is 
'skladane przez klientow dotycza jedzenia dostepnego w barze';

comment on column Zamowienia.ID_Zamowienia is 
'klucz glowny zamowienia';

comment on column Zamowienia.ID_Klient is 
'klucz glowny';

comment on column Zamowienia.Godzinazamowienia is 
'godzina przyjecia zamowienia przez barmana';

alter table Barman
   add constraint FK_Barman_Bar foreign key (ID_Bar)
      references Bar (ID_Bar)
      on update restrict
      on delete cascade;

comment on foreign key Barman.FK_Barman_Bar is 
'bar obslugiwany jest przez wielu barmanow';

alter table Barman
   add constraint FK_Barman_Zamowienia foreign key (ID_Zamowienia)
      references Zamowienia (ID_Zamowienia)
      on update restrict
      on delete cascade;

comment on foreign key Barman.FK_Barman_Zamowienia is 
'zamowienie obslugiwane jest przez barmana';

alter table Informacja
   add constraint FK_Internet_Informacja foreign key (ID_Internet)
      references Internet (ID_Internet)
      on update restrict
      on delete cascade;

comment on foreign key Informacja.FK_Internet_Informacja is 
'W internecie mozna znalezc wiele informacji';

alter table Informacja
   add constraint FK_Klient_Informacja foreign key (ID_Klient)
      references Klient (ID_Klient)
      on update restrict
      on delete cascade;

comment on foreign key Informacja.FK_Klient_Informacja is 
'Klient mo¿e zobaczyæ wiele informacji';

alter table Informacja
   add constraint FK_SalonVR_Informacja foreign key (ID_Salon)
      references SalonVR (ID_Salon)
      on update restrict
      on delete cascade;

comment on foreign key Informacja.FK_SalonVR_Informacja is 
'na temat jednego salonu jest wiele informacji';

alter table Oferta
   add constraint FK_OFERTA_FK_OFERTA_OFERTAGR foreign key (ID_Ofertagrupowa)
      references Ofertagrupowa (ID_Ofertagrupowa)
      on update restrict
      on delete restrict;

alter table Oferta
   add constraint FK_OFERTA_FK_OFERTA_SALONVR foreign key (ID_Salon)
      references SalonVR (ID_Salon)
      on update restrict
      on delete restrict;

alter table Pakiet
   add constraint FK_Gra_PakietTematyczny foreign key (ID_Gra)
      references Gra (ID_Gra)
      on update restrict
      on delete cascade;

comment on foreign key Pakiet.FK_Gra_PakietTematyczny is 
'Gra przypisana do pakietu tematycznego';

alter table Personel
   add constraint FK_Dzial_Personel foreign key (ID_Dzial)
      references Dzial (ID_Dzial)
      on update restrict
      on delete cascade;

comment on foreign key Personel.FK_Dzial_Personel is 
'ka¿dy z personelu jest przypisany do swojego dzia³u';

alter table Personel
   add constraint FK_SalonVR_Personel foreign key (ID_Salon)
      references SalonVR (ID_Salon)
      on update restrict
      on delete cascade;

comment on foreign key Personel.FK_SalonVR_Personel is 
'W jednym salonie pracuje wiele pracowników';

alter table Rezerwacja
   add constraint FK_Gra_Rezerwacja foreign key (ID_Gra)
      references Gra (ID_Gra)
      on update restrict
      on delete cascade;

comment on foreign key Rezerwacja.FK_Gra_Rezerwacja is 
'jedna gra w wielu rezerwacjach';

alter table Rezerwacja
   add constraint FK_Klient_Rezerwacja foreign key (ID_Klient)
      references Klient (ID_Klient)
      on update restrict
      on delete cascade;

comment on foreign key Rezerwacja.FK_Klient_Rezerwacja is 
'Klient mo¿e dokonaæ wielu rezerwacji';

alter table Rezerwacja
   add constraint FK_Personel_Rezerwacja foreign key (ID_Personel)
      references Personel (ID_Personel)
      on update restrict
      on delete cascade;

comment on foreign key Rezerwacja.FK_Personel_Rezerwacja is 
'jeden pracownik moze zapisac wiele rezerwacji';

alter table Rezerwacja
   add constraint FK_REZERWAC_FK_SPRZET_SPRZET foreign key (ID_Sprzet)
      references Sprzet (ID_Sprzet)
      on update restrict
      on delete restrict;

alter table Sprzet
   add constraint FK_Sprzet_SalonVR foreign key (ID_Salon)
      references SalonVR (ID_Salon)
      on update restrict
      on delete cascade;

comment on foreign key Sprzet.FK_Sprzet_SalonVR is 
'w kazdym salonie jest wyposazony w sprzet';

alter table Stansprzetu
   add constraint FK_SalonVR_Stansprzetu foreign key (ID_Salon)
      references SalonVR (ID_Salon)
      on update restrict
      on delete cascade;

comment on foreign key Stansprzetu.FK_SalonVR_Stansprzetu is 
'ukazuje stan sprzetu w salonie';

alter table Zamowienia
   add constraint FK_Zamowienia_Klient foreign key (ID_Klient)
      references Klient (ID_Klient)
      on update restrict
      on delete cascade;

comment on foreign key Zamowienia.FK_Zamowienia_Klient is 
'klient dokonuje zamowienia';

