SELECT *FROM company.programming;
CREATE TABLE musicList(
song_ID INT PRIMARY KEY AUTO_INCREMENT,
artist_ID INT NOT NULL DEFAULT 19,
Song_Title VARCHAR(30) NOT NULL DEFAULT 'kavindharani' UNIQUE);
SELECT *FROM music.musiclist;
INSERT INTO musiclist(album_ID,song_ID,Song_Title,artist_ID) VALUE(1,38,'Alone I Break',3);
CREATE TABLE student(
	Key_id INT PRIMARY KEY,
    roll_id INT,
    name_id VARCHAR(20)
);
DROP TABLE musiclist;
ALTER TABLE musiclist DROP COLUMN album_ID;
INSERT INTO musiclist(song_Title) VALUE('hai');
UPDATE musiclist
SET artist_ID=1943
WHERE song_ID=7;
DELETE FROM musiclist
WHERE Song_title='dai';
ALTER TABLE musiclist ADD dob VARCHAR(10) NOT NULL;
INSERT INTO client_table VALUE(406,'FedEx',2);
INSERT INTO works_with_table VALUE(105,406,130);
