CREATE TABLE `users` (
    `id` int(11) NOT NULL,
    `name` varchar(255) NOT NULL,
    `address` varchar(255) NOT NULL,
    `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`,`name`,`address`,`position`) VALUES
(1,'Motoaki (Yagoo) Tanigo','jl. Cover Corp no.23','Best Girl'),
(2,'Natsuiro Matsuri','jl. Im God Okay no.33','Lolicon'),
(3,'Shirakami Fubuki','jl. Aa Yabe no.19','Notto Catto'),
(4,'Usada Pekora','jl. Konpeko no.11','Pure Born Comedian');

ALTER TABLE `users`
    ADD PRIMARY KEY(`id`);

ALTER TABLE `users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
