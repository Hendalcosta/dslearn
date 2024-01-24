INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Java, Como Programar', 'https://live.staticflickr.com/3897/14485179234_803e4a0f08_w.jpg', 'https://cdn.iconscout.com/icon/free/png-256/free-java-file-51-775447.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-01-31T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-12-31T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2025-01-31T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-12-31T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha de Aulas', 'Trilha Principal do Curso', 1, 'https://live.staticflickr.com/3897/14485179234_803e4a0f08_w.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://live.staticflickr.com/3897/14485179234_803e4a0f08_w.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Acompanhe conteúdo ao vivo', 3, 'https://live.staticflickr.com/3897/14485179234_803e4a0f08_w.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Introdução a Orfientação à Objetos', 1, 'https://live.staticflickr.com/3897/14485179234_803e4a0f08_w.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Introdução a Linguagem Java', 2, 'https://live.staticflickr.com/3897/14485179234_803e4a0f08_w.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Classes e Objetos em Java', 3, 'https://live.staticflickr.com/3897/14485179234_803e4a0f08_w.jpg', 1, 1);

INSERT INTO tb_enrollment (user_id, offer_id,  enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2024-01-31T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id,  enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2024-01-31T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 01, Capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de Apoio: abc', 'https://www.youtube.com/watch?v=Ucyx_QPfDng&list=PLHz_AreHm4dkqe2aR0tQK74m8SFe-aGsY');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 02, Capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material de Apoio: def', 'https://www.youtube.com/watch?v=Ucyx_QPfDng&list=PLHz_AreHm4dkqe2aR0tQK74m8SFe-aGsY');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 03, Capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material de Apoio: ghi', 'https://www.youtube.com/watch?v=Ucyx_QPfDng&list=PLHz_AreHm4dkqe2aR0tQK74m8SFe-aGsY');


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Tarefa do Capítulo', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2024-02-28T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
