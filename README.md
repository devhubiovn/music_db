```sql
Cơ sở dữ liệu
Bảng users - Quản lý thông tin người dùng

user_id: int, primary key, auto increment
username: varchar, unique
email: varchar, unique
password: varchar
full_name: varchar
date_of_birth: date
gender: varchar
created_at: timestamp, lưu thời gian thực tế khi tài khoản được tạo
updated_at: timestamp, lưu thời gian cập nhật gần nhất
Bảng songs - Quản lý thông tin bài hát

song_id: int, primary key, auto increment
title: varchar
artist_id: int, foreign key
album_id: int, foreign key
genre_id: int, foreign key
release_date: date
duration: time
play_count: int, tăng theo hành vi người dùng
like_count: int, tăng theo hành vi người dùng
trending_rank: int, cài sẵn
song_pic: varchar, link ảnh bài hát
song_url: varchar, link Youtube bài hát
created_at: timestamp, lưu thời gian thực tế khi bài hát được thêm vào
Bảng artists - Thông tin nghệ sĩ

artist_id: int, primary key, auto increment
artist_name: varchar
artist_hot: boolean (đánh dấu nghệ sĩ nổi bật)
image_url: varchar, link ảnh nghệ sĩ
created_at: timestamp
Bảng albums - Thông tin album

album_id: int, primary key, auto increment
album_name: varchar
album_hot: boolean (đánh dấu album nổi bật)
artist_id: int, foreign key
release_date: date
image_url: varchar, link ảnh album
created_at: timestamp
Bảng genres - Thể loại bài hát

genre_id: int, primary key, auto increment
genre_name: varchar
Bảng favorite - Danh sách yêu thích của người dùng

favorite_id: int, primary key, auto increment
user_id: int, foreign key
song_id: int, foreign key
favorite_name: varchar
created_at: timestamp
Bảng history - Lịch sử nghe nhạc

history_id: int, primary key, auto increment
user_id: int, foreign key
song_id: int, foreign key
played_at: timestamp
Bảng events - Sự kiện sắp diễn ra

event_id: int, primary key, auto increment
event_name: varchar
event_date: date
location: varchar
description: text
Bảng admin - Quản lý tài khoản quản trị

admin_id: int, primary key, auto increment
username: varchar, unique
password: varchar
full_name: varchar
created_at: timestamp
Bảng stats - Thống kê bài hát

stat_id: int, primary key, auto increment
song_id: int, foreign key
total_plays: int
total_likes: int
updated_at: timestamp
```


Chức năng trang người dùng
Đăng ký tài khoản: Tương tác với bảng users, cho phép người dùng nhập thông tin cá nhân.
Đăng nhập tài khoản: Kiểm tra username và password trong bảng users.
Thay đổi mật khẩu: Cập nhật thông tin password dựa vào user_id.
Hiển thị danh sách bài hát/video có thứ hạng cao: Lấy dữ liệu từ bảng songs, sắp xếp theo trending_rank và hiển thị top 10 bài hát.
Hiển thị bài hát mới nhất theo thể loại: Lọc và sắp xếp từ bảng songs theo release_date và genre_name.
Hiển thị nghệ sĩ nổi bật: Dựa vào artist_hot trong bảng artists để hiển thị.
Hiển thị album nổi bật: Lọc các album nổi bật dựa vào album_hot và hiển thị các bài hát theo album.
Thêm bài hát vào danh sách yêu thích: Tương tác với bảng favorite, thêm bài hát yêu thích của người dùng.
Lịch sử nghe nhạc: Cập nhật thông tin vào bảng history khi người dùng nghe bài hát.
Sự kiện sắp diễn ra: Hiển thị danh sách từ bảng events.
Chức năng trang quản trị
Thêm/xóa/cập nhật bài hát: Tương tác với bảng songs để quản lý bài hát.
Xem thống kê: Lấy dữ liệu từ bảng stats để xem thông tin phát và lượt thích.
Quản trị tài khoản người dùng: Tương tác với bảng users để quản lý tài khoản người dùng.


```sql
DROP DATABASE `db_need_drop`
```
