-- 1.Tính số lượng bản ghi ở bảng actor
select count(*) AS quantity from actor;

-- 2.Xác định thời lượng dài nhất và ngắn nhất của các bộ phim trong bảng film
select max(length), min(length) from film; 

-- 3.Có bao nhiêu bộ phim có rating = R ?
select count(*) ,rating from film 
where rating = 'R';

-- 4.Trung bình rental_rate của các bộ phim dài hơn 60 phút ?
select avg(rental_rate) from film
where length >60;