select
	menu_name,
    menu_price,
    orderable_status
from
	tbl_menu
where
	orderable_status = 'Y';
    
-- tbl_menu 테이블에서 메뉴 이름,가격, 판매상태를 조회할건데 메뉴 가격이 13000원 인 친구들만 조회해줘
select
	menu_name,
	menu_pirce,
	orderable_status
from
	tbl_menu
where
	menu_price =13000;
    
-- tbl_menu 테이블에서 메뉴 코드, 이름, 판매상태를 조회할건데 판매상태가 Y가 아닌 애들만 조회해줘
select
	menu_code,
    menu_name,
    orderable_status
from 
	tbl_menu
where
	orderable_status != 'Y';  -- (!=, <> 제네릭 )은 부정
    
-- tbl_menu 에서 메뉴 코드, 이름,가격을 조회할건데, 가격이 20000초과인 녀석들만 조회해줘
select
	menu_code,
    menu_name,
    menu_price
from
	tbl_menu
where
	menu_price > 20000;
    
select
	menu_code,
    menu_name,
    menu_price
from
	tbl_menu
where
	menu_price >= 10000 && menu_price <= 20000; 
    
-- and / or 연산자
-- where 절과 함께 사용을 하며
-- 자바랑 똑같음ㅋ
-- (or) : 둘 다 null 이 아니면서 하나라도 0 이 아닌 값이 있을 경우 1을 반환한다.

-- or 테스트
select 1 or 1, 1 or 0 , 0 or 1;  -- 둘중하나가 t이면 t이다
select 0 or 0;

select
	menu_name,
    menu_price,
    category_code,
    orderable_status
from
	tbl_menu
where
	orderable_status = 'Y'
    or
    category_code = 10
order by
	category_code; 
  

select * from tbl_menu
where
	menu_price > 5000
    or
    category_code = 10

-- (and) 연산자. 모든걸 만족시켜야함
-- and연산자와 함께 where 절 사용

select 1 and 1;
select 1 and 0 , 0 and 1, 0 and 0;

-- tbl_menu 테이블에서 모든컬럼을 조회하는데, 판매상태 y이면서 카테고리코드 10

select * from table_menu
where
	orderable_status ='Y'
    and
    category_code = 10;
    
-- and 와 or 의 우선순위 and > or 우선순위 높이고 싶으면 소괄호 사용.  
select * from tbl_menu
where category_code = 4
	or menu_price = 9000
    and menu_code > 10;  
    
--  between 연산자랑 where
select 
	menu_name,
    menu_price,
    category_code
from
	tbl_menu
where
	menu_price between 10000 and 20000;
    
-- like 연산자
-- tbl_menu 테이블에서 메뉴이름,가격을 조회하는데
-- 메뉴이름이 '마늘'이라는 단어를 포함하고 있는 녀석들만 조회해줘

select menu_name,
	menu_price
from tbl_menu
where 
    menu_name like '%마늘%';
    
select * from tbl_menu
where menu_price >5000
	and
    category_code = 10
    and
	menu_name not like '%갈치%';
    
-- in 연산자 활용
-- tbl_menu 테이블에서 메뉴이름, 카테고리 코드 조회하는데 카테고리 코드가 4,5,6 인 애들 조회

select menu_name,
	category_code
from tbl_menu
where category_code in (4,5,6);    

-- is null
select 
	category_code,
    category_name,
    ref_category_code
from
	tbl_category
where
	ref_category_code is not ull;


   
    
    

        