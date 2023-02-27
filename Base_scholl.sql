# Напишите базу данных для школьного кабинета, в рамках которой можно фиксировать, кто и в какое время сидел за той или иной партой.

—# Место ученика — это ряд, парта, вариант.
—# В течение одного дня у разных классов бывает несколько уроков.
—# Создайте минимум 3 таблицы: «Кабинет», «Ученик» и сводная таблица, где отображаются парты и ученики.
—# Используйте поля «началоурока» и «конецурока» с типом данных TimeStamp.#



DROP TABLE IF EXISTS sh_children;
CREATE TABLE sh_children (
  children_id int(10),
  children_class VARCHAR(20),
  name VARCHAR(20) COMMENT 'Имя ребенка',
  children_unit int(10) COMMENT 'Ряд ребенка',
  children_table int(10) COMMENT 'Парта ребенка',
  children_var int(10) COMMENT 'Вариант ребенка'
 );
  

INSERT INTO sh_children (children_id, children_class, name, children_unit, children_table, children_var ) VALUES
  ('1','7a','Геннадий', '1','1','1'),
  ('2','7a','Наталья', '1','1','2'),
  ('3','7a','Александр', '2','2','1'),
  ('4','7a','Сергей', '2', '2','2'),
  ('5','7a','Иван', '3', '3','1'),
  ('6','7a','Мария', '3', '3','2'),
  ('7','7б','Ольга', '1','1','1'),
  ('8','7б','Петр', '1','1','2'),
  ('9','7б','Артур', '2','2','1'),
  ('10','7б','Надя', '2', '2','2'),
  ('11','7б','Никита', '3', '3','1'),
  ('12','7б','Василиса', '3', '3','2');
 
 
 
select * from sh_children;
drop table sh_children;

CREATE TABLE sh_cab (
  cab_id int(20) NOT null,
  cab_name VARCHAR(20) COMMENT 'Название кабинета',
  name VARCHAR(20) COMMENT 'Имя ребенка',
  start_lesson TIMESTAMP COMMENT 'Начало урока',
  finish_lesson TIMESTAMP COMMENT 'Конец урока'
  );
 
 
 select * from sh_cab;
 drop table sh_cab;


INSERT INTO sh_cab (cab_id, cab_name, name, start_lesson, finish_lesson) VALUES
  ('11','Химия', 'Геннадий','2023-02-24 10:00:00','2023-02-24 10:40:00'),
  ('11','Химия', 'Наталья','2023-02-24 10:00:00','2023-02-24 10:40:00'),
  ('11','Химия', 'Александр','2023-02-24 10:00:00','2023-02-24 10:40:00'),
  ('11','Химия', 'Сергей','2023-02-24 10:00:00','2023-02-24 10:40:00'),
  ('11','Химия', 'Иван','2023-02-24 10:00:00','2023-02-24 10:40:00'),
  ('11','Химия', 'Мария','2023-02-24 10:00:00','2023-02-24 10:40:00'),
  ('18','Биология', 'Геннадий','2023-02-24 11:00:00','2023-02-24 11:40:00'),
  ('18','Биология', 'Наталья','2023-02-24 11:00:00','2023-02-24 11:40:00'),
  ('18','Биология', 'Александр','2023-02-24 11:00:00','2023-02-24 11:40:00'),
  ('18','Биология', 'Сергей','2023-02-24 11:00:00','2023-02-24 11:40:00'),
  ('18','Биология', 'Иван','2023-02-24 11:00:00','2023-02-24 11:40:00'),
  ('18','Биология', 'Мария','2023-02-24 11:00:00','2023-02-24 11:40:00'),
  ('25','Английский язык', 'Геннадий','2023-02-24 12:20:00','2023-02-24 13:00:00'),
  ('25','Английский язык', 'Наталья','2023-02-24 12:20:00','2023-02-24 13:00:00'),
  ('25','Английский язык', 'Александр','2023-02-24 12:20:00','2023-02-24 13:00:00'),
  ('25','Английский язык', 'Сергей','2023-02-24 12:20:00','2023-02-24 13:00:00'),
  ('25','Английский язык', 'Иван','2023-02-24 12:20:00','2023-02-24 13:00:00'),
  ('25','Английский язык', 'Мария','2023-02-24 12:20:00','2023-02-24 13:00:00'),
  ('38','Физика', 'Геннадий','2023-02-24 14:38:00','2023-02-24 15:12:00'),
  ('38','Физика', 'Наталья','2023-02-24 14:38:00','2023-02-24 15:12:00'),
  ('38','Физика', 'Александр','2023-02-24 14:38:00','2023-02-24 15:12:00'),
  ('38','Физика', 'Сергей','2023-02-24 14:38:00','2023-02-24 15:12:00'),
  ('38','Физика', 'Иван','2023-02-24 14:38:00','2023-02-24 15:12:00'),
  ('38','Физика', 'Мария','2023-02-24 14:38:00','2023-02-24 15:12:00'),
  ('11','Химия', 'Ольга','2023-02-24 15:00:00','2023-02-24 15:40:00'),
  ('11','Химия', 'Петр','2023-02-24 15:00:00','2023-02-24 15:40:00'),
  ('11','Химия', 'Артур','2023-02-24 15:00:00','2023-02-24 15:40:00'),
  ('11','Химия', 'Надя','2023-02-24 15:00:00','2023-02-24 15:40:00'),
  ('11','Химия', 'Никита','2023-02-24 15:00:00','2023-02-24 15:40:00'),
  ('11','Химия', 'Василиса','2023-02-24 15:00:00','2023-02-24 15:40:00'),
  ('18','Биология', 'Ольга','2023-02-24 16:00:00','2023-02-24 16:40:00'),
  ('18','Биология', 'Петр','2023-02-24 16:00:00','2023-02-24 16:40:00'),
  ('18','Биология', 'Артур','2023-02-24 16:00:00','2023-02-24 16:40:00'),
  ('18','Биология', 'Надя','2023-02-24 16:00:00','2023-02-24 16:40:00'),
  ('18','Биология', 'Никита','2023-02-24 16:00:00','2023-02-24 16:40:00'),
  ('18','Биология', 'Василиса','2023-02-24 16:00:00','2023-02-24 16:40:00'),
  ('25','Английский язык', 'Ольга','2023-02-24 17:20:00','2023-02-24 18:00:00'),
  ('25','Английский язык', 'Петр','2023-02-24 17:20:00','2023-02-24 18:00:00'),
  ('25','Английский язык', 'Артур','2023-02-24 17:20:00','2023-02-24 18:00:00'),
  ('25','Английский язык', 'Надя','2023-02-24 17:20:00','2023-02-24 18:00:00'),
  ('25','Английский язык', 'Никита','2023-02-24 17:20:00','2023-02-24 18:00:00'),
  ('25','Английский язык', 'Василиса','2023-02-24 17:20:00','2023-02-24 1:00:00'),
  ('38','Физика', 'Ольга','2023-02-24 18:38:00','2023-02-24 20:12:00'),
  ('38','Физика', 'Петр','2023-02-24 18:38:00','2023-02-24 20:12:00'),
  ('38','Физика', 'Артур','2023-02-24 18:38:00','2023-02-24 20:12:00'),
  ('38','Физика', 'Надя','2023-02-24 18:38:00','2023-02-24 20:12:00'),
  ('38','Физика', 'Никита','2023-02-24 18:38:00','2023-02-24 20:12:00'),
  ('38','Физика', 'Василиса','2023-02-24 18:38:00','2023-02-24 20:12:00');
  
select * from sh_cab;
  
select 
	a.*, 
	b.cab_id,
	b.cab_name, start_lesson, finish_lesson
from sh_children a
	left outer join sh_cab b on a.name = b.name
	


