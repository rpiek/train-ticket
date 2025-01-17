create table train_type
(
    id            varchar(36)  not null
        primary key,
    average_speed int          null,
    confort_class int          null,
    economy_class int          null,
    name          varchar(191) null,
    constraint UK_3ayk8fx1ak7c37s5udyh8n3s2
        unique (name)
)
    engine = InnoDB;
INSERT INTO train_type (id, average_speed, confort_class, economy_class, name) VALUES
                                                                                   ('30e72ebe-2f68-4f19-a643-15c4019c1e5e', 7, 2147483647, 2147483647, 'velit'),
                                                                                   ('e01a9c1d-0484-4b00-b092-f0cf36a156ce', 22, 2147483647, 2147483647, 'nesciunt'),
                                                                                   ('b4009954-e49d-4c66-9d44-ec37a2c3bece', 61, 2147483647, 2147483647, 'quis'),
                                                                                   ('a468b0b8-bc29-4659-8126-e473a41f3545', 44, 2147483647, 2147483647, 'veniam'),
                                                                                   ('86c61c52-7e8e-4b3e-ab91-ec11590561d7', 100, 2147483647, 2147483647, 'dicta'),
                                                                                   ('305b6387-08ac-4c60-bbf0-90e0d4742c78', 6, 2147483647, 2147483647, 'odit'),
                                                                                   ('aff868dc-0f10-4017-9583-dd1787d6de99', 81, 2147483647, 2147483647, 'consequatur'),
                                                                                   ('0013cb89-742f-4f03-93c0-05d2af816e12', 67, 2147483647, 2147483647, 'perspiciatis'),
                                                                                   ('9593426f-aa7f-4d89-b524-5dff824e86ce', 4, 2147483647, 2147483647, 'repudiandae'),
                                                                                   ('745c7965-b538-492b-985c-62956b38c33e', 63, 2147483647, 2147483647, 'numquam'),
                                                                                   ('e98e379e-1c9a-4061-bd28-e304a67b67ea', 20, 2147483647, 2147483647, 'beatae'),
                                                                                   ('416bec33-1197-4707-bfe7-b9e95eff1825', 64, 2147483647, 2147483647, 'newaminaburgh'),
                                                                                   ('dae02942-8842-48e3-8555-841e26fcb844', 100, 2147483647, 2147483647, 'rem'),
                                                                                   ('b9077b95-d147-4a65-a1ab-d19afc10ac3e', 17, 2147483647, 2147483647, 'modi'),
                                                                                   ('91cbd625-3be7-443f-bd7e-ed8e9097726c', 80, 2147483647, 2147483647, 'illum'),
                                                                                   ('e4b27c3b-c686-4769-9efa-c3f62a0c7fc2', 45, 2147483647, 2147483647, 'cumque'),
                                                                                   ('53eb9bc7-1bef-48cd-9456-46e2b170f7a9', 28, 2147483647, 2147483647, 'quam'),
                                                                                   ('9fd039b4-6065-44db-b35b-1bf9aa919a8a', 44, 2147483647, 2147483647, 'asperiores'),
                                                                                   ('29df494e-521b-4b98-a152-400be7adf3cf', 59, 2147483647, 2147483647, 'recusandae'),
                                                                                   ('aa6b9d0b-a9ce-4334-9625-33367eedefd6', 29, 2147483647, 2147483647, 'ut'),
                                                                                   ('98414141-911a-4dd3-9406-b83867614a88', 77, 2147483647, 2147483647, 'blanditiis'),
                                                                                   ('95065a15-603b-4483-8753-7fba608d18f0', 2, 2147483647, 2147483647, 'consequuntur'),
                                                                                   ('88b4b00d-aea3-4bdc-8429-35cd72f0613a', 39, 2147483647, 2147483647, 'illo'),
                                                                                   ('2761ee44-69a2-4f53-a677-e0bfde1dfb36', 80, 2147483647, 2147483647, 'fortkevin'),
                                                                                   ('745a230d-bf89-4c09-8562-a63b8b5c01ee', 72, 2147483647, 2147483647, 'pariatur'),
                                                                                   ('20a7ecfe-afba-4c74-aee6-f039507d0b52', 70, 2147483647, 2147483647, 'rerum'),
                                                                                   ('82bc5377-5eb4-4ad5-a570-7664591226f4', 90, 2147483647, 2147483647, 'provident'),
                                                                                   ('11e407f1-251d-43da-8743-a863a01a8290', 12, 2147483647, 2147483647, 'alias'),
                                                                                   ('4ccd34af-d5c9-41c4-b128-8e0f8cb9aa17', 30, 2147483647, 2147483647, 'sapiente'),
                                                                                   ('74abc069-11f2-46ea-a718-104b94e3f972', 56, 2147483647, 2147483647, 'deleniti'),
                                                                                   ('82f0a0b3-e3b4-4ae1-a3aa-4e714bf0e688', 56, 2147483647, 2147483647, 'elliefurt'),
                                                                                   ('8fcfe8c3-5814-4d41-8d60-263a627c53cd', 8, 2147483647, 2147483647, 'voluptatibus'),
                                                                                   ('bee294b7-a458-4ba4-9b7d-151e3e933bc5', 31, 2147483647, 2147483647, 'flatleyburgh'),
                                                                                   ('b31c0d46-afee-4846-8c9d-ac242d0b0070', 37, 2147483647, 2147483647, 'distinctio'),
                                                                                   ('9655ca3b-801d-4be0-9b09-e506897cffe3', 35, 2147483647, 2147483647, 'vel'),
                                                                                   ('03479fde-4971-42c0-ad95-ece15133ef16', 73, 2147483647, 2147483647, 'odio'),
                                                                                   ('54452e64-4a66-4bd1-82b4-6d7d21587461', 13, 2147483647, 2147483647, 'sed'),
                                                                                   ('4e3eb497-12ce-4701-ab17-ab9e5670af35', 86, 2147483647, 2147483647, 'voluptatem'),
                                                                                   ('8f483f36-2c28-4ef4-974a-4e74dcf140bd', 93, 2147483647, 2147483647, 'northhaskell'),
                                                                                   ('897f2f51-83d6-408c-84d5-d0edec647b79', 28, 2147483647, 2147483647, 'impedit'),
                                                                                   ('de8bfdd4-68c1-4af9-be63-00080dc25bc8', 35, 2147483647, 2147483647, 'perthamboy'),
                                                                                   ('ec54107b-cf50-4484-8e8d-468383c9eaf2', 77, 2147483647, 2147483647, 'aut'),
                                                                                   ('55127ba3-fc1c-4c12-a96f-9be3abf25b71', 29, 2147483647, 2147483647, 'quibusdam'),
                                                                                   ('f0b97428-e8c0-4594-9611-a2e967568453', 90, 2147483647, 2147483647, 'vitae'),
                                                                                   ('30c45a93-e7d6-431a-a83f-77d4241a81a9', 4, 2147483647, 2147483647, 'fugit'),
                                                                                   ('c8b9f113-6290-4d19-b2d4-49c57d555819', 76, 2147483647, 2147483647, 'voluptates'),
                                                                                   ('a5316446-5dc4-4522-8860-0f925112e4ac', 55, 2147483647, 2147483647, 'maxwellhaven'),
                                                                                   ('c59105fb-f6ae-4dae-8997-040b61821dfc', 14, 2147483647, 2147483647, 'possimus'),
                                                                                   ('8c4ef90f-156d-4c52-a442-6dc1610d0631', 16, 2147483647, 2147483647, 'assumenda'),
                                                                                   ('49f3d53b-f117-4e65-abc7-d80c2ccdae80', 41, 2147483647, 2147483647, 'fortzoe'),
                                                                                   ('5a9a2b8f-302c-4deb-8eae-4c042ffd11de', 81, 2147483647, 2147483647, 'commodi'),
                                                                                   ('4afbfe68-bf21-4521-b153-5009e9c194ab', 58, 2147483647, 2147483647, 'similique'),
                                                                                   ('f966012c-4707-4978-849a-324e93ca5666', 96, 2147483647, 2147483647, 'maxime'),
                                                                                   ('2717207f-459e-4c2a-bacd-cd26fb7b50d4', 72, 2147483647, 2147483647, 'manhattan'),
                                                                                   ('6269f040-6407-424a-98f9-a540437e38cf', 33, 2147483647, 2147483647, 'sunt'),
                                                                                   ('8885e4b1-2059-4694-9ab3-43a6d814987b', 45, 2147483647, 2147483647, 'ipsam'),
                                                                                   ('56bc35a9-7ff6-4a16-99cd-567bc512abd6', 79, 2147483647, 2147483647, 'newzola'),
                                                                                   ('53dc00ba-2f13-4804-bb0a-51c2ee40af36', 67, 2147483647, 2147483647, 'giafurt'),
                                                                                   ('10878390-f7a8-44c7-8d71-d4a57ad1dc09', 22, 2147483647, 2147483647, 'fortbirdie'),
                                                                                   ('3a8f0d0f-36e4-460a-afa7-b4af2292f877', 27, 2147483647, 2147483647, 'praesentium'),
                                                                                   ('4b139e21-20dd-4fb0-8b46-81906bfc676c', 97, 2147483647, 2147483647, 'qui'),
                                                                                   ('cf4aa247-cab0-42b7-b289-a644608fbd1d', 47, 2147483647, 2147483647, 'eius'),
                                                                                   ('23a561ef-9251-436f-b5eb-1eff5bd36f0a', 52, 2147483647, 2147483647, 'soluta'),
                                                                                   ('589bce62-53e8-4bcc-a440-c6ff06be21b8', 16, 2147483647, 2147483647, 'ex'),
                                                                                   ('157726c3-4fe6-4d75-8f3f-13cd96b60b77', 83, 2147483647, 2147483647, 'corporis'),
                                                                                   ('a496a9c1-3712-475e-a45f-fff1b656f77f', 69, 2147483647, 2147483647, 'minus'),
                                                                                   ('5c25072c-f3cb-4a89-af4e-dc79767b1e0c', 84, 2147483647, 2147483647, 'ratione'),
                                                                                   ('9735a10c-22ed-4b8a-9a3d-ebe12eadf3c8', 92, 2147483647, 2147483647, 'dolorem'),
                                                                                   ('290f5116-7d43-4a01-81dc-5bee6f19c848', 78, 2147483647, 2147483647, 'ipsum'),
                                                                                   ('b585888d-76c5-46f2-a84e-a020d97e68f3', 14, 2147483647, 2147483647, 'a'),
                                                                                   ('4a3f4f6b-4ad8-4e6d-97e7-812678b5b5f8', 10, 2147483647, 2147483647, 'ducimus'),
                                                                                   ('b1d88660-6621-49bf-930f-589b3f8e3c87', 4, 2147483647, 2147483647, 'quidem'),
                                                                                   ('15ca4240-1b9f-4a65-b3aa-6cf02ac39bde', 79, 2147483647, 2147483647, 'labore'),
                                                                                   ('1d1a06dd-1b6d-4efe-8e32-5c2ad48e9176', 27, 2147483647, 2147483647, 'saepe'),
                                                                                   ('884a9a98-06fd-440c-80d7-693ea2f58aa5', 7, 2147483647, 2147483647, 'quas'),
                                                                                   ('a680c465-032f-4686-8008-d253da14a45c', 84, 2147483647, 2147483647, 'raleigh'),
                                                                                   ('29028a40-f0cd-4946-9325-1363a7ab17a4', 54, 2147483647, 2147483647, 'placeat'),
                                                                                   ('7622875b-9b02-401b-b320-f0e8f24eb240', 4, 2147483647, 2147483647, 'sequi'),
                                                                                   ('abb8199d-f454-420e-b0c4-91b4e1303a14', 16, 2147483647, 2147483647, 'facere'),
                                                                                   ('36cc3874-d5d0-4457-98e0-6788e0a199b6', 31, 2147483647, 2147483647, 'vero'),
                                                                                   ('09806af6-82e6-419d-a726-392f685c2a65', 61, 2147483647, 2147483647, 'tempora'),
                                                                                   ('bcea59ed-3190-4521-80fa-0072d09e07e3', 91, 2147483647, 2147483647, 'natus'),
                                                                                   ('966a3c7b-2440-4eb5-85b2-e0a743ddc913', 35, 2147483647, 2147483647, 'nulla'),
                                                                                   ('41fb7e4e-9049-45ce-926d-d0728a630a76', 34, 2147483647, 2147483647, 'streichbury'),
                                                                                   ('81bb9c0d-b719-408b-bb87-9c0c9833e3d9', 11, 2147483647, 2147483647, 'magni'),
                                                                                   ('14403c0e-9644-4ff8-8ea2-1ef44a0e9ad1', 60, 2147483647, 2147483647, 'perferendis'),
                                                                                   ('7fa604ba-43b6-4f12-9e82-982c4f0d3679', 76, 2147483647, 2147483647, 'consectetur'),
                                                                                   ('3ae94ace-95d0-49e0-8605-64de956baa6d', 36, 2147483647, 2147483647, 'eastjake'),
                                                                                   ('a5433660-a898-4996-bba1-842fc0042ba0', 53, 2147483647, 2147483647, 'eveniet'),
                                                                                   ('1cf10f3a-c8fd-48f7-8ae4-c1fc548d5bd1', 41, 2147483647, 2147483647, 'deserunt'),
                                                                                   ('86a24f1a-e50c-41d6-b720-288d3717d9cc', 93, 2147483647, 2147483647, 'wauwatosa'),
                                                                                   ('e99c7071-c8da-4c2e-b384-1694c0e2d3d8', 58, 2147483647, 2147483647, 'exercitationem'),
                                                                                   ('5e79ab90-f3d1-4360-9336-40f99a407cce', 39, 2147483647, 2147483647, 'hunterton'),
                                                                                   ('07023276-6e35-4caa-b4e0-2aab83e93862', 55, 2147483647, 2147483647, 'newshania'),
                                                                                   ('71cc63b0-e42b-45b1-a6fd-2628fb99cf43', 52, 2147483647, 2147483647, 'newjeremyworth'),
                                                                                   ('4a6d68bd-013c-4cae-bc6e-0d067163645e', 37, 2147483647, 2147483647, 'westloisville'),
                                                                                   ('b4363a77-e70f-4bf1-94f3-0d2e3a973859', 73, 2147483647, 2147483647, 'quod'),
                                                                                   ('b8cb3612-e51e-459e-bfd9-dff2a1a55382', 7, 2147483647, 2147483647, 'reprehenderit'),
                                                                                   ('3e5d8801-0cc4-41d4-b8f7-9e12fb10d709', 40, 2147483647, 2147483647, 'newpriscilla'),
                                                                                   ('ddcd3f7e-795e-48b2-ba68-3b5af7790330', 4, 2147483647, 2147483647, 'ipsa');























