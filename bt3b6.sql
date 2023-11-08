-- 1. Tìm địa chỉ có chứa từ ‘San’ .
select * from address
where address like '%san%';

-- 2. Tìm địa chỉ bắt đầu bằng ‘1’ và kết thúc bằng ‘y’
select address from address
where address like '1%y';

-- 3. Tìm địa chỉ chứa chữ ‘a’ vị trí thứ 3
select address from address
where address like '__a%';

-- 4. Tìm tên khách hàng có địa chỉ bằng có kết thúc chữ ‘o’
select * from customer;
select customer.first_name, customer.last_name from customer
inner join address on customer.address_id = address.address_id
where address.address like '%o';

-- 5. Tìm tên bộ phim có chứa category = ‘Games’;
select film.title, category.name from film
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where category.name like '%Games%';

-- 6. Từ bảng Person tìm nhân viên lương trong khoảng 2000 đến 300 (sử dụng between)
select * from Person
where salary between 300 and 2000;

-- 7. Từ bảng Person tìm nhân viên sinh tháng 7 đến tháng 12. (sử dụng between)
select * from Person
where month(birthday) between 7 and 12;
 
-- 8. Lấy danh sách những người có sinh nhật trong tháng này và hiện thị thông tin “Happy birthday”!
select fullname ,
case
	when month(birthday) = month(now()) then 'Happy birthday'
end as cheer
from Person
where month(birthday) = month(now());

-- 9. Tìm tất cả những có năm sinh 2000, 1990, 1991 bảng Person.
select * from Person
where  year(birthday) in (2000, 1990, 1991);



