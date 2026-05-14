-- Insert Genres
INSERT INTO genre (name) VALUES ('Action');
INSERT INTO genre (name) VALUES ('Adventure');
INSERT INTO genre (name) VALUES ('RPG');
INSERT INTO genre (name) VALUES ('Strategy');
INSERT INTO genre (name) VALUES ('Sports');
INSERT INTO genre (name) VALUES ('Racing');
INSERT INTO genre (name) VALUES ('Puzzle');
INSERT INTO genre (name) VALUES ('Shooter');
INSERT INTO genre (name) VALUES ('Fighting');
INSERT INTO genre (name) VALUES ('Platformer');

-- Insert Platforms
INSERT INTO platform (name) VALUES ('PlayStation 5');
INSERT INTO platform (name) VALUES ('Xbox Series X');
INSERT INTO platform (name) VALUES ('Nintendo Switch');
INSERT INTO platform (name) VALUES ('PC');
INSERT INTO platform (name) VALUES ('PlayStation 4');
INSERT INTO platform (name) VALUES ('Xbox One');

-- Insert Games
INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('The Legend of Zelda: Tears of the Kingdom', 'An epic adventure through the skies and lands of Hyrule with new abilities and mysteries to uncover.', '2023-05-12', 9.5, 2, 3, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5vmg.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9wvl.jpg', true);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Elden Ring', 'A dark fantasy action RPG set in a vast world created by Hidetaka Miyazaki and George R.R. Martin.', '2022-02-25', 9.3, 3, 1, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co4jni.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc96im.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('God of War Ragnarök', 'Kratos and Atreus embark on an epic journey through the Nine Realms to prevent Ragnarök.', '2022-11-09', 9.4, 1, 5, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5s5v.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9mzr.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Baldurs Gate 3', 'A story-rich RPG where your choices shape a tale of fellowship and betrayal, survival and sacrifice.', '2023-08-03', 9.6, 3, 4, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5vb3.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9wsd.jpg', true);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Call of Duty: Modern Warfare III', 'The latest installment in the iconic first-person shooter franchise with intense multiplayer action.', '2023-11-10', 7.8, 8, 2, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co6yza.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9zvl.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('FIFA 24', 'Experience the worlds game with over 19,000 players across 700+ teams in the most authentic football game.', '2023-09-29', 7.5, 5, 1, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co6wlo.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9xmk.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Super Mario Bros. Wonder', 'A new 2D Mario adventure with brand-new power-ups and creative level designs.', '2023-10-20', 9.1, 10, 3, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co6tmu.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9whs.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Starfield', 'Bethesdas first new universe in 25 years - explore space and discover the mysteries of the universe.', '2023-09-06', 8.2, 3, 2, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5w5k.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9vwm.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Street Fighter 6', 'The next evolution of the iconic fighting game series with new gameplay mechanics and fighters.', '2023-06-02', 8.9, 9, 4, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5vkg.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9tbk.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Hogwarts Legacy', 'Experience life as a student at Hogwarts School of Witchcraft and Wizardry in the 1800s.', '2023-02-10', 8.5, 3, 1, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5vkx.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9rkg.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Forza Motorsport', 'The most technically advanced racing game featuring realistic physics and stunning graphics.', '2023-10-10', 8.4, 6, 2, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co6plj.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9wkp.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Resident Evil 4 Remake', 'A reimagining of the 2005 classic with modernized gameplay and stunning visuals.', '2023-03-24', 9.2, 1, 5, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5vkh.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9sfm.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Civilization VI', 'Build an empire that will stand the test of time in this turn-based strategy masterpiece.', '2016-10-21', 9.0, 4, 4, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co2mly.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc4wen.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Portal 2', 'A mind-bending puzzle game that challenges players with innovative gameplay mechanics.', '2011-04-19', 9.7, 7, 4, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1rs4.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc3vkr.jpg', true);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Assassins Creed Mirage', 'Return to the roots of the franchise with a focus on stealth and parkour in ancient Baghdad.', '2023-10-05', 8.0, 1, 1, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co6k8v.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9wjn.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Spider-Man 2', 'Swing through New York City as both Peter Parker and Miles Morales in this superhero adventure.', '2023-10-20', 9.3, 1, 1, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co6rwx.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9wlp.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Diablo IV', 'The ultimate action RPG returns with an open world filled with demons and darkness.', '2023-06-06', 8.6, 3, 4, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co5vkl.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc9tbm.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Cyberpunk 2077', 'An open-world RPG set in Night City where you play as a mercenary outlaw going after a one-of-a-kind implant.', '2020-12-10', 8.3, 3, 1, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co2mzx.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc8qzv.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('The Last of Us Part II', 'An emotionally gripping action-adventure game about survival, revenge, and redemption.', '2020-06-19', 9.4, 1, 5, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1wyy.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc7kwd.jpg', false);

INSERT INTO game (title, description, release_date, rating, genre_id, platform_id, cover_url, backdrop_url, in_wishlist)
VALUES ('Age of Empires IV', 'Return to history in this classic real-time strategy game with new civilizations and campaigns.', '2021-10-28', 8.3, 4, 4, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co3r8i.jpg', 'https://images.igdb.com/igdb/image/upload/t_screenshot_big/sc8mjp.jpg', false);
