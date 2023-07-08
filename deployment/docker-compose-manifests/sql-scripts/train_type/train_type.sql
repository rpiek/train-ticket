create table train_type
(
    id            varchar(36)  not null
        primary key,
    average_speed int          null,
    confort_class int          null,
    economy_class int          null,
    name          varchar(255) null,
    constraint UK_3ayk8fx1ak7c37s5udyh8n3s2
        unique (name)
)
    engine = MyISAM;
INSERT INTO train_type (id, average_speed, confort_class, economy_class, name) VALUES
('885462f6-443f-4475-b28a-c46ddcc5a1b9', 16, 2147483647, 98, 'cum'),
('740c7148-859e-41db-a275-ca0c88e0c1e7', 24, 2147483647, 74, 'tenetur'),
('658b4b53-6b35-488a-bb1c-bfd7dd07132d', 96, 2147483647, 8, 'nostrum'),
('c1889d15-6105-4060-84db-5a140e47416a', 74, 2147483647, 77, 'architecto'),
('44faa3d9-1d7a-4aa4-a578-7c20cd7ece17', 51, 2147483647, 85, 'aperiam'),
('946c3758-296d-4053-be73-50194121e1b0', 68, 2147483647, 41, 'magni'),
('118ca61c-14c0-4978-9308-25397f5866c8', 99, 2147483647, 38, 'voluptatibus'),
('0a655e94-2e4f-4401-8bec-a988c84c1d24', 40, 2147483647, 45, 'ullam'),
('db8a659b-25b2-4eef-9a2c-766e6c4e1092', 92, 2147483647, 73, 'provident'),
('a10da668-be9d-44de-a6f7-5e304c81e411', 61, 2147483647, 49, 'neque'),
('bc3426c0-cad6-4db9-903d-fdc50d257afd', 24, 2147483647, 74, 'ratione'),
('c727bbcb-438a-4c74-96ec-0aabd98f9f86', 23, 2147483647, 42, 'accusamus'),
('f20f21a9-fa86-4f43-9a45-19c3b117e9b3', 82, 2147483647, 82, 'veniam'),
('55d29373-f517-468a-a583-37e5c60a0113', 28, 2147483647, 13, 'nobis'),
('c400ab4e-3d82-4a42-bac0-11a2cdca8c38', 80, 2147483647, 68, 'assumenda'),
('dca5c64a-3371-434f-aedd-c4426aa1bc8c', 57, 2147483647, 75, 'corrupti'),
('d2d70a70-9e20-44c3-937b-89458ea27a4b', 50, 2147483647, 20, 'consectetur'),
('4a579924-d18e-44ce-b731-48237009b95f', 47, 2147483647, 57, 'totam'),
('6baac831-4dc3-4021-ab9b-dc4cee9a120b', 70, 2147483647, 23, 'perferendis'),
('8195b764-8fb8-4515-9436-79e7f8d0815d', 10, 2147483647, 33, 'sequi'),
('e4f4e71a-6d46-4e43-be8e-22a0f9e96178', 88, 2147483647, 3, 'asperiores'),
('9a09d2ae-3a4a-4788-823f-a8a6c3689e56', 68, 2147483647, 9, 'nihil'),
('dd9d096a-5d7b-4db2-9d12-1ea71d30d396', 32, 2147483647, 4, 'voluptatem'),
('42484b42-a848-4558-8c4f-1bf069f59585', 67, 2147483647, 96, 'consequatur'),
('1988b0d8-1a75-4a3c-9ae3-9d7b3a1d11d9', 32, 2147483647, 20, 'facilis'),
('ceba8040-2d69-46a5-a50d-b15efcf2b363', 63, 2147483647, 58, 'odit'),
('5670fae3-26fc-40f3-a16f-9fdfc94d0b74', 14, 2147483647, 75, 'in'),
('beb71cd5-5de2-4300-9c9d-6b640157367e', 15, 2147483647, 69, 'ab'),
('7495fc0c-6744-4b64-97a3-e54cab9460b2', 80, 2147483647, 40, 'et'),
('f61c40ca-23cd-4667-baf0-4f65dfb61aa3', 74, 2147483647, 4, 'enim'),
('d0cdb247-dd43-4f73-aa78-5b2f474740d0', 64, 2147483647, 61, 'numquam'),
('60c70b2b-2f6c-48d0-99ab-b79d7a58d432', 90, 2147483647, 11, 'velit'),
('110b5f1e-174d-4897-b427-d6a825f3a9cc', 6, 2147483647, 13, 'iste'),
('e1ab242f-c88f-407c-abb2-faa396f4f664', 7, 2147483647, 38, 'illum'),
('9760577f-806d-4647-abb7-4a43e65a8e2f', 78, 2147483647, 86, 'excepturi'),
('0805d814-a186-4ee5-8e7f-2f47aa04ac6e', 95, 2147483647, 0, 'eaque'),
('0fadb6f2-0d77-4e6e-8c2a-265f55dc688c', 78, 2147483647, 4, 'praesentium'),
('85909b2b-fa61-4b2e-a648-78f83b8326e7', 74, 2147483647, 60, 'earum'),
('e3788f8a-5cec-4186-a99b-38ad1d2e727e', 6, 2147483647, 68, 'animi'),
('5f35a810-bc48-4f27-9618-9cf87d10111b', 10, 2147483647, 86, 'porro'),
('13ae38b0-972f-49b8-acc7-df13453024ed', 97, 2147483647, 55, 'omnis'),
('9fd52384-6b6e-42b2-b493-aa36f3188cbd', 17, 2147483647, 42, 'quis'),
('de841d12-2977-4a30-b58b-b04abb7a7615', 75, 2147483647, 72, 'inventore'),
('2420c2dd-e608-48a8-b785-13494506c6b9', 77, 2147483647, 23, 'tempora'),
('339987f2-837a-475e-a30e-06c2de89fbd0', 63, 2147483647, 31, 'amet'),
('9fb57117-6f4b-4f19-bdae-9aca3764842d', 67, 2147483647, 71, 'ipsam'),
('61ad821a-62af-4dc5-b544-6e07acdeb8c4', 70, 2147483647, 59, 'accusantium'),
('7f23b835-8a48-47ca-b0a2-55f0cf891889', 66, 2147483647, 93, 'vitae'),
('d4b91245-e9d5-4a24-9181-43a68f3ab9ea', 85, 2147483647, 92, 'explicabo'),
('bc9eaf20-4408-4e45-8e30-df6e9df2882a', 78, 2147483647, 3, 'repudiandae'),
('8fd3f19a-0060-40f2-a8c7-82e8480e8899', 39, 2147483647, 74, 'sapiente'),
('6aedfd06-c3f0-4e2f-baa2-c9b389bda220', 28, 2147483647, 43, 'dolor'),
('731bfca7-eff0-4865-87b9-aba8739fb044', 37, 2147483647, 15, 'magnam'),
('30272ebf-0d30-4e73-9f77-6f41d59a2ebc', 94, 2147483647, 10, 'pariatur'),
('b98f01e7-dcfb-459e-aa70-7b8ea37b26d8', 67, 2147483647, 37, 'recusandae'),
('4e4a89ca-06f0-4653-85c7-f3b4afb3beea', 24, 2147483647, 75, 'dignissimos'),
('81979524-7cb8-45c4-b566-abb4417d7ad0', 8, 2147483647, 8, 'hic'),
('e609ea6a-2415-4147-ae84-3d2f0c38cbdf', 67, 2147483647, 55, 'modi'),
('6b05c03f-f39e-49da-b5c8-8236719d19bf', 22, 2147483647, 22, 'deserunt'),
('cd95e7c6-8cba-46bb-81d0-44251aea46c7', 85, 2147483647, 51, 'minima'),
('6cca2c8e-2a17-4af3-9edc-7d1c124bce4b', 15, 2147483647, 31, 'expedita'),
('83152731-151d-461b-a876-e419336b31a1', 42, 2147483647, 85, 'similique'),
('0907157d-ca62-4099-b416-3b68a1727aa0', 65, 2147483647, 42, 'minus'),
('3ff96be4-357c-41b3-8d26-b71847a1db83', 43, 2147483647, 62, 'doloremque'),
('aabc5d83-871e-4878-9ccb-55498e4441ec', 46, 2147483647, 67, 'eos'),
('a7cee648-574b-4746-8667-df37b17402bf', 27, 2147483647, 44, 'exercitationem'),
('1513e792-4e6a-46c1-a36e-4f3692bd8dcd', 20, 2147483647, 58, 'at'),
('5fce7b06-eeea-4936-ac34-898b5c0efcbb', 19, 2147483647, 2, 'perspiciatis'),
('04998478-c7d1-4c2b-a5b7-ed3acf00d975', 82, 2147483647, 1, 'vel'),
('3b6bfd05-39e7-4730-978e-9e4d37a383ad', 73, 2147483647, 38, 'quod'),
('b38695a2-7fd5-473c-baf7-0989aa23fd29', 51, 2147483647, 80, 'culpa'),
('7c046331-580a-44d4-82d5-9fbb3eb8ac92', 65, 2147483647, 98, 'placeat'),
('9990410c-e72f-481e-bfca-c2d00e0ab975', 32, 2147483647, 87, 'aut'),
('131a6e35-28ae-463b-9d64-c72d24f46356', 6, 2147483647, 20, 'temporibus'),
('6ee39cb5-2125-4ab2-abbf-794c4a09d6c0', 39, 2147483647, 74, 'maiores'),
('68d1b55a-2ef0-401d-93a5-fc0a95bbc227', 64, 2147483647, 56, 'error'),
('3daf2209-8aed-47c3-b72c-5951dddb6151', 91, 2147483647, 58, 'qui'),
('841506f4-5249-4687-afcb-7596a425920a', 88, 2147483647, 0, 'debitis'),
('b00d550e-5db7-47d2-a8ce-fc356408d6ce', 12, 2147483647, 56, 'eveniet'),
('b482d401-d822-4c98-8103-e1081573d9df', 96, 2147483647, 26, 'unde'),
('72250a8d-9f86-4f29-bbe3-b01da8841b4c', 39, 2147483647, 9, 'saepe'),
('cd66ddea-e3b8-48f9-b806-4bada472e9bd', 55, 2147483647, 92, 'nam'),
('2d9926bf-f54f-4b6a-93cf-efd82e8e84e8', 26, 2147483647, 75, 'id'),
('52e367d8-6950-4657-ae5c-217897d99a59', 76, 2147483647, 26, 'quo'),
('64f44afa-9105-4e48-9885-445c61ff0e40', 77, 2147483647, 26, 'esse'),
('888f23ea-7a62-475d-8f35-c2060e2bc507', 97, 2147483647, 85, 'voluptates'),
('95dd443c-2bc6-4cfc-a6f5-d2b9946ba8d4', 49, 2147483647, 6, 'quae'),
('d62d7425-dc5d-4d95-907c-30a58ad019ba', 78, 2147483647, 24, 'vero'),
('0303703e-0d85-4b52-8d11-79723ddde4a5', 42, 2147483647, 93, 'quos'),
('89fdff5d-0199-4253-acd5-cf6d303d8448', 32, 2147483647, 6, 'molestiae'),
('9f8ae9bf-ec71-4741-ba87-5366db918f03', 19, 2147483647, 47, 'ut'),
('5302cc2e-39a6-4de5-a980-e9af11b8568a', 100, 2147483647, 55, 'nemo'),
('27f2dc8e-edfd-4bd4-af54-cd1e0573b88b', 86, 2147483647, 27, 'quasi'),
('c5edd876-a610-4d2c-92b6-e88cd112a742', 54, 2147483647, 17, 'dolore'),
('86a7ae0d-06ed-42e5-aaf1-fb3c1f3a7601', 94, 2147483647, 89, 'labore'),
('55835809-266c-4acd-9978-938266b60709', 75, 2147483647, 12, 'fugiat'),
('82fd78d2-7bc7-4358-aab7-39bcf2284f59', 36, 2147483647, 97, 'possimus'),
('2efca0b5-a5cc-49de-8730-df2a3cc5ae1a', 30, 2147483647, 1, 'alias'),
('1e03ab2c-631f-44f0-b182-8136d3b4c711', 98, 2147483647, 28, 'consequuntur'),
('8d09519e-fbde-4b1d-a416-8379d323ba18', 2, 2147483647, 1, 'aliquid');
