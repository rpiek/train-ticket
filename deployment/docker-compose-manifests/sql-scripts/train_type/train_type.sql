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
    engine = MyISAM;
INSERT INTO train_type (id, average_speed, confort_class, economy_class, name) VALUES
                                                                                   ('607eb144-c8ac-4d86-97ee-8009d44d2803', 42, 2147483647, 2147483647, 'hic'),
                                                                                   ('4ab053f0-3e87-43cb-98a2-edf80448fd10', 75, 2147483647, 2147483647, 'quisquam'),
                                                                                   ('dab20644-be8b-4ff9-b4df-71857c7f592d', 12, 2147483647, 2147483647, 'perferendis'),
                                                                                   ('05a087c9-dfa5-41cf-b915-275e3c82da07', 30, 2147483647, 2147483647, 'corrupti'),
                                                                                   ('95bcbfe8-fa0b-4858-9b43-d5b88df3fdcf', 40, 2147483647, 2147483647, 'saepe'),
                                                                                   ('11e664e1-1955-429d-943d-c547cb485c39', 79, 2147483647, 2147483647, 'non'),
                                                                                   ('3eb75a64-ad98-4cb8-b717-09917441e4f3', 63, 2147483647, 2147483647, 'fugiat'),
                                                                                   ('26179f5c-f4db-4804-b608-b9f499b89769', 3, 2147483647, 2147483647, 'cum'),
                                                                                   ('2d5e70cc-9f0b-4a7a-8ad3-db6f67598f71', 33, 2147483647, 2147483647, 'necessitatibus'),
                                                                                   ('11dd19c6-ec51-45d5-9e69-1ffac6b600c6', 35, 2147483647, 2147483647, 'omnis'),
                                                                                   ('594ce537-f826-4688-8a93-cda1a7b4807e', 40, 2147483647, 2147483647, 'dolor'),
                                                                                   ('6ac176a8-7392-4d8f-8923-e81efe3941d5', 38, 2147483647, 2147483647, 'minus'),
                                                                                   ('0172e293-a185-40c4-8a53-e6c9c5fb037b', 64, 2147483647, 2147483647, 'strosinmouth'),
                                                                                   ('5d2b6525-958c-4db3-9333-3d05105af612', 22, 2147483647, 2147483647, 'unde'),
                                                                                   ('6495cf87-4ec7-4fb7-994f-e3c7e44eafad', 19, 2147483647, 2147483647, 'occaecati'),
                                                                                   ('1a8a82e7-b433-4595-997e-30f6943ae123', 57, 2147483647, 2147483647, 'pariatur'),
                                                                                   ('0e4279c2-b648-4ba8-b790-95d68634408c', 43, 2147483647, 2147483647, 'labore'),
                                                                                   ('4dc1aeb4-70b6-4600-b488-0f94b3f40351', 18, 2147483647, 2147483647, 'dolorum'),
                                                                                   ('b7ad5c94-7959-4829-9930-51c86bb17acf', 79, 2147483647, 2147483647, 'et'),
                                                                                   ('cfa73827-5031-4a41-9d1e-b4d2385c66b4', 43, 2147483647, 2147483647, 'minima'),
                                                                                   ('a1df3a35-32ac-4001-817a-37a52eb02ade', 38, 2147483647, 2147483647, 'delectus'),
                                                                                   ('40974ba7-363d-4311-bd56-2e0c30371a21', 39, 2147483647, 2147483647, 'voluptatibus'),
                                                                                   ('dfe54e0e-e94a-4ac1-b1bc-af7b755684a9', 51, 2147483647, 2147483647, 'sequi'),
                                                                                   ('c65dd042-d07e-44d6-aa38-255f04233197', 86, 2147483647, 2147483647, 'nam'),
                                                                                   ('53717636-ae79-41ca-9c4a-8a0a51412398', 57, 2147483647, 2147483647, 'debitis');






