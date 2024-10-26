-- Bảng users
INSERT INTO users (username, email, password, full_name, date_of_birth, gender)
VALUES 
('johndoe', 'johndoe@example.com', 'password123', 'John Doe', '1995-04-10', 'Male'),
('janesmith', 'janesmith@example.com', 'password456', 'Jane Smith', '1992-05-15', 'Female'),
('alicew', 'alicew@example.com', 'password789', 'Alice White', '1989-06-25', 'Female'),
('michaelb', 'michaelb@example.com', 'password321', 'Michael Brown', '1988-09-10', 'Male'),
('lauram', 'lauram@example.com', 'password654', 'Laura Miller', '1993-07-20', 'Female'),
('williamj', 'williamj@example.com', 'password987', 'William Jones', '1996-08-30', 'Male'),
('sarap', 'sarap@example.com', 'password147', 'Sara Parker', '1997-03-17', 'Female'),
('lukew', 'lukew@example.com', 'password258', 'Luke Wilson', '1990-10-15', 'Male'),
('emilyt', 'emilyt@example.com', 'password369', 'Emily Taylor', '1995-01-22', 'Female'),
('davidk', 'davidk@example.com', 'password741', 'David King', '1994-11-19', 'Male');

-- Bảng artists
INSERT INTO artists (artist_name, artist_hot, image_url)
VALUES 
('Taylor Swift', TRUE, 'https://link.to/taylorswift.jpg'),
('Ed Sheeran', TRUE, 'https://link.to/edsheeran.jpg'),
('BTS', TRUE, 'https://link.to/bts.jpg'),
('Adele', TRUE, 'https://link.to/adele.jpg'),
('Drake', TRUE, 'https://link.to/drake.jpg'),
('Billie Eilish', FALSE, 'https://link.to/billieeilish.jpg'),
('The Weeknd', TRUE, 'https://link.to/theweeknd.jpg'),
('Ariana Grande', TRUE, 'https://link.to/arianagrande.jpg'),
('Harry Styles', FALSE, 'https://link.to/harrystyles.jpg'),
('Olivia Rodrigo', TRUE, 'https://link.to/oliviarodrigo.jpg');

-- Bảng albums
INSERT INTO albums (album_name, album_hot, artist_id, release_date, image_url)
VALUES 
('1989', TRUE, 1, '2014-10-27', 'https://link.to/1989.jpg'),
('Divide', TRUE, 2, '2017-03-03', 'https://link.to/divide.jpg'),
('Map of the Soul: 7', TRUE, 3, '2020-02-21', 'https://link.to/mapofthesoul7.jpg'),
('25', TRUE, 4, '2015-11-20', 'https://link.to/25.jpg'),
('Scorpion', TRUE, 5, '2018-06-29', 'https://link.to/scorpion.jpg'),
('When We All Fall Asleep, Where Do We Go?', FALSE, 6, '2019-03-29', 'https://link.to/whenweallfall.jpg'),
('After Hours', TRUE, 7, '2020-03-20', 'https://link.to/afterhours.jpg'),
('Sweetener', FALSE, 8, '2018-08-17', 'https://link.to/sweetener.jpg'),
('Fine Line', FALSE, 9, '2019-12-13', 'https://link.to/fineline.jpg'),
('SOUR', TRUE, 10, '2021-05-21', 'https://link.to/sour.jpg');

-- Bảng genres
INSERT INTO genres (genre_name)
VALUES 
('Pop'), ('Rock'), ('Hip-Hop'), ('R&B'), ('Electronic'),
('Country'), ('Jazz'), ('Blues'), ('Classical'), ('Indie');

-- Bảng songs
INSERT INTO songs (title, artist_id, album_id, genre_id, release_date, duration, play_count, like_count, trending_rank, song_pic, song_url)
VALUES 
('Blank Space', 1, 1, 1, '2014-11-10', '00:03:51', 1200, 500, 1, 'https://link.to/blankspace.jpg', 'https://youtu.be/e-ORhEE9VVg'),
('Shape of You', 2, 2, 3, '2017-01-06', '00:03:53', 1500, 700, 2, 'https://link.to/shapeofyou.jpg', 'https://youtu.be/JGwWNGJdvx8'),
('Dynamite', 3, 3, 1, '2020-08-21', '00:03:19', 1700, 800, 3, 'https://link.to/dynamite.jpg', 'https://youtu.be/gdZLi9oWNZg'),
('Hello', 4, 4, 1, '2015-10-23', '00:04:55', 2000, 900, 4, 'https://link.to/hello.jpg', 'https://youtu.be/YQHsXMglC9A'),
('God\'s Plan', 5, 5, 3, '2018-01-19', '00:03:18', 2200, 1000, 5, 'https://link.to/godsplan.jpg', 'https://youtu.be/xpVfcZ0ZcFM'),
('Bad Guy', 6, 6, 5, '2019-03-29', '00:03:14', 1400, 600, 6, 'https://link.to/badguy.jpg', 'https://youtu.be/DyDfgMOUjCI'),
('Blinding Lights', 7, 7, 5, '2019-11-29', '00:03:21', 1800, 850, 7, 'https://link.to/blindinglights.jpg', 'https://youtu.be/fHI8X4OXluQ'),
('No Tears Left to Cry', 8, 8, 1, '2018-04-20', '00:03:26', 1300, 550, 8, 'https://link.to/notearslefttocry.jpg', 'https://youtu.be/ffxKSjUwKdU'),
('Adore You', 9, 9, 1, '2019-12-06', '00:03:27', 1250, 530, 9, 'https://link.to/adoreyou.jpg', 'https://youtu.be/VllcgZr8YZM'),
('Drivers License', 10, 10, 1, '2021-01-08', '00:04:02', 1600, 750, 10, 'https://link.to/driverslicense.jpg', 'https://youtu.be/ZmDBbnmKpqQ');

-- Bảng favorite
INSERT INTO favorite (user_id, song_id, favorite_name)
VALUES 
(1, 1, 'Top Favorites'), (2, 2, 'Chill Vibes'), (3, 3, 'Workout Jams'),
(4, 4, 'Pop Hits'), (5, 5, 'Hip-Hop Bangers'), (6, 6, 'Late Night Tunes'),
(7, 7, 'Top 40'), (8, 8, 'Feel Good'), (9, 9, 'Mellow'), (10, 10, 'Heartbreak Anthems');

-- Bảng history
INSERT INTO history (user_id, song_id)
VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Bảng events
INSERT INTO events (event_name, event_date, location, description)
VALUES 
('Taylor Swift World Tour', '2024-12-01', 'New York', 'Taylor Swift performing live in NYC'),
('Ed Sheeran Concert', '2024-11-10', 'London', 'Ed Sheeran live in concert'),
('BTS World Tour', '2024-10-20', 'Seoul', 'BTS World Tour performance'),
('Adele Live', '2024-09-15', 'Los Angeles', 'Adele performing her biggest hits'),
('Drake Festival', '2024-08-05', 'Toronto', 'Drake hosting a music festival'),
('Billie Eilish Concert', '2024-07-30', 'San Francisco', 'Billie Eilish live in SF'),
('The Weeknd After Hours Tour', '2024-06-25', 'Miami', 'The Weeknd performing his hits'),
('Ariana Grande Sweetener Tour', '2024-05-14', 'Houston', 'Ariana Grande live in concert'),
('Harry Styles Fine Line Tour', '2024-04-18', 'Chicago', 'Harry Styles performing his latest album'),
('Olivia Rodrigo SOUR Tour', '2024-03-12', 'Nashville', 'Olivia Rodrigo performing songs from SOUR');

-- Bảng admin
INSERT INTO admin (username, password, full_name)
VALUES 
('admin_taylor', 'adminpass1', 'Taylor Admin'), ('admin_ed', 'adminpass2', 'Ed Admin'),
('admin_bts', 'adminpass3', 'BTS Admin'), ('admin_adele', 'adminpass4', 'Adele Admin'),
('admin_drake', 'adminpass5', 'Drake Admin'), ('admin_billie', 'adminpass6', 'Billie Admin'),
('admin_weeknd', 'adminpass7', 'Weeknd Admin'), ('admin_ariana', 'adminpass8', 'Ariana Admin'),
('admin_harry', 'adminpass9', 'Harry Admin'), ('admin_olivia', 'adminpass10', 'Olivia Admin');

-- Bảng stats
INSERT INTO stats (song_id, total_plays, total_likes)
VALUES 
(1, 1200, 500), (2, 1500, 700), (3, 1700, 800), (4, 2000, 900), (5, 2200, 1000),
(6, 1400, 600), (7, 1800, 850), (8, 1300, 550), (9, 1250, 530), (10, 1600, 750);
