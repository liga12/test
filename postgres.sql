CREATE TABLE building
(
    id INTEGER DEFAULT nextval('building_id_seq'::regclass) PRIMARY KEY NOT NULL,
    id_user INTEGER NOT NULL,
    street VARCHAR(60) NOT NULL,
    house INTEGER NOT NULL,
    apartment INTEGER,
    description TEXT NOT NULL,
    image VARCHAR(124) NOT NULL,
    CONSTRAINT building_user1_id_fk FOREIGN KEY (id_user) REFERENCES user1 (id)
);
CREATE TABLE calendar_view
(
    id INTEGER DEFAULT nextval('calendar_view_id_seq'::regclass) PRIMARY KEY NOT NULL,
    id_building INTEGER NOT NULL,
    date_view TIMESTAMP NOT NULL,
    state BOOLEAN DEFAULT true NOT NULL,
    CONSTRAINT calendar_view_building_id_fk FOREIGN KEY (id_building) REFERENCES building (id)
);
CREATE TABLE registration
(
    id INTEGER DEFAULT nextval('registration_id_seq'::regclass) PRIMARY KEY NOT NULL,
    surname VARCHAR(32) NOT NULL,
    name VARCHAR(32) NOT NULL,
    patronymic VARCHAR(32) NOT NULL,
    phone VARCHAR(126) NOT NULL,
    id_calendar_view INTEGER NOT NULL,
    CONSTRAINT registration_calendar_view_id_fk FOREIGN KEY (id_calendar_view) REFERENCES calendar_view (id)
);
CREATE TABLE user1
(
    id INTEGER DEFAULT nextval('user_id_seq'::regclass) PRIMARY KEY NOT NULL,
    surname VARCHAR(32) NOT NULL,
    name VARCHAR(32) NOT NULL,
    patronymic VARCHAR(32) NOT NULL,
    phone BIGINT NOT NULL
);

INSERT INTO public.building (id, id_user, street, house, apartment, description, image) VALUES (6, 5, 'Шевченко', 22, null, 'Продам 1 ком.кв. квартиру в новом доме от Жилстрой 1, на пр. Победы, 83. дом 4, секция А. Сдача декабрь 2016. Метраж 47 метр. 4/9 этаж, в середине дома, окна во двор. В строительном состоянии, что даёт Вам возможность проявить фантазию и оформить жильё в соответствии с Вашими предпочтениями. Бери телефон и звони! ', '/static/img/pic1.jpg');
INSERT INTO public.building (id, id_user, street, house, apartment, description, image) VALUES (9, 3, 'Сумская', 34, 12, 'Продам 3-комнатную квартиру в новостройке по ул. Ярослава Мудрого, 30-А. Общая площадь 112 кв.м. В квартире выполнен качественный ремонт с использованием дорогих материалов. Мебель премиум класса. Удобная планировка. Формат: кухня-столовая с зоной отдыха, гостиная. кабинет, спальня с выходом на балкон, 2 с/у, прихожая. Квартира продается вместе с местом в подземном паркинге.', '/static/img/pic2.jpg');
INSERT INTO public.building (id, id_user, street, house, apartment, description, image) VALUES (8, 1, 'Тимирова', 1, 1, 'Срочно продам в кирпичном сданном доме 1к.кв. в Новострое Жилстрой-2 "Оптима "на П.Поле, пер. О. Яроша, 18 , квартира в строительном состоянии, 6/16 ,МПО,радиаторы отопления,метал. дверь,Лоджия застеклена.Кухня 15м2 Элитное месторасположение. 
Есть другие варианты квартир.
звоните...Торг', '/static/img/pic3.jpg');
INSERT INTO public.building (id, id_user, street, house, apartment, description, image) VALUES (7, 5, 'Гагарина', 345, 67, 'Квартира новая, Киевский р-н,кирпичный дом,энергосберегающие технологии,в доме автономное отопление и собственная электроподстанция.Уютное место, рядом лес и речка, развитая инфраструктура. Отличный вариант!', '/static/img/pic4.jpg');

INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (248, 6, '2017-04-04 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (249, 6, '2017-04-04 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (287, 7, '2017-04-04 11:00:00.000000', false);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (250, 6, '2017-04-05 09:00:00.000000', false);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (251, 6, '2017-04-05 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (252, 6, '2017-04-05 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (253, 6, '2017-04-05 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (254, 6, '2017-04-05 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (255, 6, '2017-04-05 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (256, 6, '2017-04-05 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (257, 6, '2017-04-06 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (258, 6, '2017-04-06 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (259, 6, '2017-04-06 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (260, 6, '2017-04-06 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (261, 6, '2017-04-06 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (262, 6, '2017-04-06 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (263, 6, '2017-04-06 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (264, 6, '2017-04-07 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (265, 6, '2017-04-07 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (266, 6, '2017-04-07 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (267, 6, '2017-04-07 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (268, 6, '2017-04-07 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (269, 6, '2017-04-07 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (270, 6, '2017-04-07 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (271, 6, '2017-04-08 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (272, 6, '2017-04-08 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (273, 6, '2017-04-08 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (274, 6, '2017-04-08 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (275, 6, '2017-04-08 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (276, 6, '2017-04-08 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (277, 6, '2017-04-08 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (288, 7, '2017-04-04 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (289, 7, '2017-04-04 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (290, 7, '2017-04-04 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (291, 7, '2017-04-04 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (292, 7, '2017-04-05 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (293, 7, '2017-04-05 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (294, 7, '2017-04-05 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (295, 7, '2017-04-05 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (296, 7, '2017-04-05 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (297, 7, '2017-04-05 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (298, 7, '2017-04-05 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (299, 7, '2017-04-06 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (300, 7, '2017-04-06 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (301, 7, '2017-04-06 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (302, 7, '2017-04-06 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (303, 7, '2017-04-06 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (304, 7, '2017-04-06 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (305, 7, '2017-04-06 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (306, 7, '2017-04-07 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (307, 7, '2017-04-07 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (308, 7, '2017-04-07 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (309, 7, '2017-04-07 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (310, 7, '2017-04-07 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (311, 7, '2017-04-07 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (312, 7, '2017-04-07 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (313, 7, '2017-04-08 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (314, 7, '2017-04-08 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (317, 7, '2017-04-08 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (318, 7, '2017-04-08 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (319, 7, '2017-04-08 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (323, 8, '2017-04-03 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (324, 8, '2017-04-03 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (326, 8, '2017-04-03 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (327, 8, '2017-04-04 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (328, 8, '2017-04-04 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (329, 8, '2017-04-04 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (330, 8, '2017-04-04 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (331, 8, '2017-04-04 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (335, 8, '2017-04-05 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (336, 8, '2017-04-05 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (337, 8, '2017-04-05 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (338, 8, '2017-04-05 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (339, 8, '2017-04-05 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (340, 8, '2017-04-05 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (341, 8, '2017-04-06 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (342, 8, '2017-04-06 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (343, 8, '2017-04-06 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (344, 8, '2017-04-06 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (345, 8, '2017-04-06 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (346, 8, '2017-04-06 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (347, 8, '2017-04-06 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (348, 8, '2017-04-07 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (349, 8, '2017-04-07 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (350, 8, '2017-04-07 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (351, 8, '2017-04-07 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (352, 8, '2017-04-07 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (353, 8, '2017-04-07 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (354, 8, '2017-04-07 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (355, 8, '2017-04-08 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (357, 8, '2017-04-08 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (358, 8, '2017-04-08 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (359, 8, '2017-04-08 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (360, 8, '2017-04-08 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (361, 8, '2017-04-08 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (362, 9, '2017-04-03 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (363, 9, '2017-04-03 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (364, 9, '2017-04-03 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (365, 9, '2017-04-03 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (366, 9, '2017-04-03 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (367, 9, '2017-04-03 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (368, 9, '2017-04-03 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (369, 9, '2017-04-04 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (370, 9, '2017-04-04 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (371, 9, '2017-04-04 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (372, 9, '2017-04-04 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (373, 9, '2017-04-04 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (374, 9, '2017-04-04 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (376, 9, '2017-04-05 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (377, 9, '2017-04-05 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (378, 9, '2017-04-05 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (380, 9, '2017-04-05 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (381, 9, '2017-04-05 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (383, 9, '2017-04-06 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (384, 9, '2017-04-06 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (385, 9, '2017-04-06 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (386, 9, '2017-04-06 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (387, 9, '2017-04-06 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (388, 9, '2017-04-06 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (389, 9, '2017-04-06 16:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (390, 9, '2017-04-07 09:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (392, 9, '2017-04-07 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (394, 9, '2017-04-07 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (395, 9, '2017-04-07 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (398, 9, '2017-04-08 10:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (399, 9, '2017-04-08 11:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (400, 9, '2017-04-08 12:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (401, 9, '2017-04-08 14:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (402, 9, '2017-04-08 15:00:00.000000', true);
INSERT INTO public.calendar_view (id, id_building, date_view, state) VALUES (403, 9, '2017-04-08 16:00:00.000000', true);

INSERT INTO public.registration (id, surname, name, patronymic, phone, id_calendar_view) VALUES (33, 'Куртова', 'Нина', 'Игоревна', '380667896547', 287);
INSERT INTO public.registration (id, surname, name, patronymic, phone, id_calendar_view) VALUES (34, 'Шпак', 'Игорь', 'Анатольевич', '380996783456', 250);

INSERT INTO public.user1 (id, surname, name, patronymic, phone) VALUES (5, 'Ступак', 'Игорь', 'Николаевич', 380668885577);
INSERT INTO public.user1 (id, surname, name, patronymic, phone) VALUES (1, 'Зинченко ', 'Наталья', 'Дмитриевна', 380668885574);
INSERT INTO public.user1 (id, surname, name, patronymic, phone) VALUES (3, 'Куетов', 'Александр', 'Петрович', 380668885573);
INSERT INTO public.user1 (id, surname, name, patronymic, phone) VALUES (16, 'Климова', 'Ираuff', 'Николаевна', 4567);
