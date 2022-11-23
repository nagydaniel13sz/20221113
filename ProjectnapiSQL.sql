Mi MADAGASZKÁR fővárosa? 
	SELECT `fovaros` FROM `orszagok` WHERE `orszag`="MADAGASZKÁR";

Melyik ország fővárosa OUAGADOUGOU?  
	SELECT`orszag`  FROM `orszagok` WHERE `fovaros`="OUAGADOUGOU";

Melyik ország autójele a TT?
	SELECT  `orszag`FROM `orszagok` WHERE `autojel`="TT"

Melyik ország pénzének jele az SGD?
	SELECT  `orszag`FROM `orszagok` WHERE `penzjel`="SGD"

Melyik ország nemzetközi telefon-hívószáma a 61?
	SELECT  `orszag`FROM `orszagok` WHERE `telefon`=61

Mekkora területű Monaco?
	SELECT  `terulet`FROM `orszagok` WHERE `orszag`="MONACO"

Hányan laknak Máltán?
	SELECT  `nepesseg`FROM `orszagok` WHERE `orszag`="MÁLTA"

Mennyi Japán népsűrűsége? 
	SELECT  (`nepesseg`/`terulet`) as nepsurureg FROM `orszagok` WHERE `orszag`="JAPÁN"

Hány lakosa van a Földnek? 
	SELECT  sum(`nepesseg`) as lakossag FROM `orszagok`

Mennyi az országok területe összesen?
	SELECT  sum(`terulet`) as lakossag FROM `orszagok`

Mennyi az országok átlagos népessége? 
	SELECT  AVG(`nepesseg`) as atlaglakossag FROM `orszagok`

Mennyi az országok átlagos területe?
	SELECT  AVG(`terulet`) as terulet FROM `orszagok`

Mennyi a Föld népsűrűsége? 
	SELECT  (`nepesseg`/`terulet`)as nepsuruseg FROM `orszagok`

Hány 1.000.000 km2-nél nagyobb területű ország van? 
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `terulet`>1000000

Hány 100 km2-nél kisebb területű ország van?
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `terulet`<100

Hány 20.000 főnél kevesebb lakosú ország van?
	SELECT COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `nepesseg`<20

Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél?
	SELECT COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `nepesseg`<20 OR `terulet`<100

Hány ország területe 50.000 és 150.000 km2 közötti? 
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `terulet` BETWEEN 150 and 50000

Hány ország lakossága 8 és 12 millió közötti?
	SELECT COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `nepesseg` BETWEEN 8000 AND 12000

Mely fővárosok népesebbek 20 millió főnél?
	SELECT `fovaros` FROM `orszagok` WHERE `nep_fovaros`>20000

Mely országok népsűrűsége nagyobb 500 fő/km2-nél?
	SELECT `orszag` FROM `orszagok` WHERE (`nepesseg`/`terulet`)>0.5

Hány ország államformája köztársaság?
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `allamforma`="köztársaság"

Mely országok pénzneme a kelet-karib dollár?
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `penznem`="kelet-karib dollár"

Hány ország nevében van benne az "ORSZÁG" szó? 
	SELECT COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `orszag`LIKE "%ORSZÁG";

Mely országokban korona a hivatalos fizetőeszköz?
	SELECT `orszag` FROM `orszagok` WHERE `penznem` like '%korona%';

Mennyi Európa területe?
	SELECT SUM(`terulet`) FROM `orszagok` WHERE `foldr_hely` LIKE '%Európa%';

Mennyi Európa lakossága?
	SELECT SUM(`nepesseg`) FROM `orszagok` WHERE `foldr_hely` LIKE '%Európa%'

Mennyi Európa népsűrűsége?
	SELECT (SUM(`nepesseg`)/`terulet`) FROM `orszagok` WHERE `foldr_hely` LIKE '%Európa%';

Hány ország van Afrikában?
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `foldr_hely` LIKE '%Afrika%'

Mennyi Afrika lakossága?
	SELECT SUM(`nepesseg`) FROM `orszagok` WHERE `foldr_hely` LIKE '%Afrika%'

Mennyi Afrika népsűrűsége?
	SELECT (SUM(`nepesseg`)/`terulet`) FROM `orszagok` WHERE `foldr_hely` LIKE '%Afrika%'

Melyek a szigetországok?  
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `foldr_hely` LIKE '%sziget%' AND `foldr_hely` NOT LIKE '%félsziget%'

Mely országok államformája hercegség, vagy királyság?
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `allamforma` LIKE '%hercegség%' OR `allamforma` LIKE '%királyság%'

Hány országnak nincs autójelzése?
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `autojel` LIKE ''
	
Mennyi a váltószáma az aprópénznek azokban az országokban, ahol nem 100?
	Nem Ertem

Hány ország területe kisebb Magyarországénál? 
	SELECT  COUNT(`id`)as orszagokszama FROM `orszagok` WHERE `terulet`<(SELECT `terulet` FROM `orszagok` WHERE `orszag` LIKE 'MAGYARORSZÁG')

Melyik a legnagyobb területű ország, és mennyi a területe? 
	SELECT `orszag`,`terulet` FROM `orszagok` ORDER BY `terulet` DESC LIMIT 1

Melyik a legkisebb területű ország, és mennyi a területe?
	SELECT `orszag`,`terulet` FROM `orszagok` ORDER BY `terulet` ASC LIMIT 1

Melyik a legnépesebb ország, és hány lakosa van?
	SELECT `orszag`,`nepesseg` FROM `orszagok` ORDER BY `nepesseg` DESC LIMIT 1

Melyik a legkisebb népességű ország, és hány lakosa van?
	SELECT `orszag`, `nepesseg` FROM `orszagok` ORDER BY  `nepesseg` ASC LIMIT 1

Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége?
	SELECT `orszag`, (`nepesseg`/`terulet`)as nepsuruseg FROM `orszagok` ORDER BY  (`nepesseg`/`terulet`) DESC LIMIT 1

Melyik a legritkábban lakott ország, és mennyi a népsűrűsége?
	SELECT `orszag`, (`nepesseg`/`terulet`)as nepsuruseg FROM `orszagok` ORDER BY  (`nepesseg`/`terulet`) ASC LIMIT 1

Melyik a legnagyobb afrikai ország és mekkora?
	SELECT `orszag`,`terulet` FROM `orszagok` WHERE `foldr_hely`='*Afrika*' ORDER BY `terulet` DESC LIMIT 1

Melyik a legkisebb amerikai ország és hányan lakják?
	SELECT `orszag`,`nepesseg` FROM `orszagok` WHERE `foldr_hely`='*Afrika*' ORDER BY `terulet` ASC LIMIT 1

Melyik az első három legsűrűbben lakott "országméretű" ország (tehát nem város- vagy törpeállam)? 
	SELECT `orszag` FROM `orszagok` WHERE `foldr_hely` NOT LIKE '%törpeállam%' AND `foldr_hely` NOT LIKE '%városállam%' ORDER BY  (`nepesseg`/`terulet`) DESC LIMIT 3

Melyik a világ hat legnépesebb fővárosa?
	SELECT `fovaros` FROM `orszagok` ORDER BY fovaros DESC LIMIT 6

Melyik tíz ország egy főre jutó GDP-je a legnagyobb? 
	SELECT `orszag` FROM `orszagok` ORDER BY (gdp/nepesseg) DESC LIMIT 10

Melyik tíz ország össz-GDP-je a legnagyobb?  
	SELECT `orszag` FROM `orszagok` ORDER BY gdp DESC LIMIT 10

Melyik országban a legszegényebbek az emberek?  
	SELECT `orszag` FROM `orszagok` ORDER BY (gdp/nepesseg) ASC LIMIT 1

Melyik a 40. legkisebb területű ország? 
	SELECT `orszag` FROM `orszagok` ORDER BY `terulet` DESC Limit 40

Melyik a 15. legkisebb népsűrűségű ország?
	SELECT `orszag` FROM `orszagok` ORDER BY `terulet` DESC Limit 15

Melyik a 61. legnagyobb népsűrűségű ország?
	SELECT `orszag` FROM `orszagok` ORDER BY `terulet` DESC Limit 61

Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez?  
	KIFUTOTTAM AZ IDOBOL ........

Az emberek hányadrésze él Ázsiában? 
	KIFUTOTTAM AZ IDOBOL ........

A szárazföldek mekkora hányadát foglalja el Oroszország?
	KIFUTOTTAM AZ IDOBOL ........

Az emberek hány százaléka fizet euroval?
	KIFUTOTTAM AZ IDOBOL ........

Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének?  
	KIFUTOTTAM AZ IDOBOL ........

A világ össz-GDP-jének hány százalékát adja az USA?
	KIFUTOTTAM AZ IDOBOL ........

A világ össz-GDP-jének hány százalékát adja az euroövezet?
	KIFUTOTTAM AZ IDOBOL ........

Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?
	KIFUTOTTAM AZ IDOBOL ........

Milyen államformák léteznek Európában? 
	KIFUTOTTAM AZ IDOBOL ........

Hányféle államforma létezik a világon? 
	KIFUTOTTAM AZ IDOBOL ........

Hányféle fizetőeszközt használnak Európában az eurón kívül?
	KIFUTOTTAM AZ IDOBOL ........

Mely pénznemeket használják több országban is?   
	KIFUTOTTAM AZ IDOBOL ........

Mely országok államformája egyedi?  
	KIFUTOTTAM AZ IDOBOL ........
