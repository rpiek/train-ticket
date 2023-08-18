create table price_config
(
    id                     varchar(36)  not null
        primary key,
    basic_price_rate       double       not null,
    first_class_price_rate double       not null,
    route_id               varchar(36)  null,
    train_type             varchar(165) null,
    constraint route_type_idx
        unique (train_type, route_id)
)
        engine = InnoDB;
INSERT INTO price_config (id, basic_price_rate, first_class_price_rate, route_id, train_type) VALUES
                                                                                                  ('f1c02cad-bcd1-4803-9cda-e48943ba0531', 37, 4, '3be0e853-3632-42de-a5ee-f50bc8968196', 'nisi'),
                                                                                                  ('4a289e2b-8795-44ac-8b7d-0097c1b01470', 13, 28, 'c366ad60-6c2b-4b78-b25d-48d43169380a', 'accusantium'),
                                                                                                  ('6e7c6a41-6797-4234-a8e2-9d143cc356f9', 70, 86, '277ab211-ec02-4758-9308-9f746557f9aa', 'aspernatur'),
                                                                                                  ('d3fdc1fc-dca0-401b-b15d-dc4d9f8fb862', 99, 39, 'e72f460b-0e08-411c-b646-082b4fcd21b4', 'ut'),
                                                                                                  ('48a05750-7ce9-492e-9c02-674bd1bc58bf', 84, 81, '6643e754-7266-4ccb-8c83-14caf36a9d19', 'tempora'),
                                                                                                  ('43c119c6-5f9e-4047-ac6a-8a97f5527ba7', 70, 58, 'a8cc164c-d018-4cb7-a083-6b18580bae77', 'libero'),
                                                                                                  ('2a826be4-5d53-4166-8485-1919754247c3', 6, 55, 'cb74efc4-e9b1-4bb1-9b7f-3c92d939b387', 'debitis'),
                                                                                                  ('1dce1be1-c476-4fca-9498-9aae4a5d0334', 86, 59, 'da68cf7a-eeb5-45aa-bcf0-4bfec4e58345', 'vel'),
                                                                                                  ('6f2ab70d-f96e-431a-99da-b0002bea6fda', 26, 52, 'dc54a242-306a-4b2a-b2fd-e09fe7f59de9', 'est'),
                                                                                                  ('d845fc7a-46f6-4d12-bdc3-1b9436ec6f6e', 48, 26, 'd1e78a4b-cb65-48d1-b270-e898a08858b4', 'voluptate'),
                                                                                                  ('91ff2ce6-74a0-4af9-b22a-2b192bed7579', 36, 84, '2e2d7a28-1460-4b84-980c-a32be5e6192f', 'alias'),
                                                                                                  ('6e8e49b0-e9bd-4c91-8ddf-3bf081ce8f64', 41, 7, '887fa246-a1a2-4e62-84ed-cfe26c01ac71', 'magnam'),
                                                                                                  ('f6e36357-0c1b-4a86-a44e-392c66aaca80', 9, 51, '285c8af1-3c94-4672-bb4a-5b3700cf756d', 'pariatur'),
                                                                                                  ('e0642326-c5ff-43ed-8063-6d2b27ab71fd', 28, 74, 'ff138992-9a76-4526-813c-476bdc15fb0b', 'fosterbury'),
                                                                                                  ('1c2f6fbd-4056-4e8b-88d5-e51835226792', 30, 88, '2e9c938e-f6bb-4416-b4e2-0e00a2533ffc', 'beatae'),
                                                                                                  ('ac280d5a-a8ee-430e-a9b8-e52970d85e0d', 76, 41, '762700ac-804a-4f31-ac48-5ef9562b1170', 'architecto'),
                                                                                                  ('de0d85ca-a174-415f-8a32-0710e1573c0e', 67, 97, '772fb6de-4240-4f7b-bd21-9f199c126079', 'veniam'),
                                                                                                  ('f70373f9-8d0e-4d2f-803f-254d8988866e', 26, 59, 'eccc7bfa-4d26-47fe-930f-9257070de2c3', 'quisquam'),
                                                                                                  ('5931d6d3-cc63-47df-b6f6-7679995111e1', 90, 37, 'bdb1a568-4eb4-4a0d-b9a0-0bd6db461ca7', 'laudantium'),
                                                                                                  ('7af0bb50-404c-4095-b8c5-ed8c274ad347', 72, 80, '92dfca97-450a-4dab-913d-5f3ddf3e0b32', 'sapiente'),
                                                                                                  ('5a7dab18-cbcb-4cb8-bffb-37ecd6200b7a', 29, 66, '514a0830-ec05-431f-bbf5-10126068c5c9', 'dolores'),
                                                                                                  ('a7a4e16f-f0f0-4122-80b3-70fa6dffa64b', 65, 46, '995bfa1c-8d2f-496c-8331-d689651582fd', 'temporibus'),
                                                                                                  ('134f0581-5e32-49b3-a07a-b9edefdee08c', 70, 8, 'c3f191d1-9bbe-4cf9-9587-c669e345fe96', 'maiores'),
                                                                                                  ('bdf4a97b-c17e-4c60-9f01-1fd4c5307c60', 100, 71, '229e6047-d9f2-4bdf-9450-405953eead13', 'lakeurbanland'),
                                                                                                  ('899e9a08-395f-438e-aa46-177a61d7f488', 100, 100, '31fc03d3-2463-441e-8cec-6e8e0943a6d7', 'id'),
                                                                                                  ('14715dfb-cd4e-4623-ad55-bb167efcd4fe', 64, 51, '65854153-48fa-425d-8260-a96e252be59b', 'aperiam'),
                                                                                                  ('0b4ea37d-7ed9-49e3-93b8-d850f910c9ca', 17, 86, '2850fad3-7400-4015-82ff-f94ab7ae7b86', 'nemo'),
                                                                                                  ('857e54de-790c-40a9-8359-7a80ef01079d', 41, 59, 'c95ca6bf-7b10-4921-9622-4b24ef49d36e', 'suscipit'),
                                                                                                  ('c7f5ce3b-9c1f-4d55-bfb1-72e7300e4651', 54, 99, '8ecd87a5-632a-456d-9598-d9206c4dc409', 'tempore'),
                                                                                                  ('ae7ce687-a865-412d-963e-3a021114de52', 10, 61, 'd8384bd9-f5ce-4347-8f21-06911a54ec98', 'doloremque'),
                                                                                                  ('27470428-5303-4fc4-ad7d-252c2b5019d2', 15, 48, '94e838a4-e0ad-4562-a1eb-7889665406f8', 'gastonia'),
                                                                                                  ('e73064c7-2723-44d7-af86-c8c47871a562', 25, 42, 'a701ff14-cd0d-4674-9f2e-7de8ea3de4f4', 'ducimus'),
                                                                                                  ('dc177bb0-945a-4244-8a08-01e443fbedf7', 6, 35, 'ae56ef34-dbe3-4879-95de-06e3531341f1', 'dolore'),
                                                                                                  ('e51358ac-14cc-48c6-82ad-ef8074e6c8a5', 87, 56, 'bd0db548-03ae-458d-9bef-5bccb361f0ef', 'non'),
                                                                                                  ('b86ffb89-7bf0-45cc-a5ed-694f27676462', 30, 30, '2dce08dc-6989-472e-8a12-6bb7270feb6f', 'iusto'),
                                                                                                  ('b4f87ddc-59f6-4e4d-9be8-ea014a23aaab', 25, 9, 'f16ccb20-c642-4ed2-85ba-413be08153cd', 'ex'),
                                                                                                  ('1e054ba0-b1bc-4bab-8417-f2d7cc2eede4', 70, 97, '6aca6695-6bf6-4652-a11a-27d529b9d9cb', 'laborum'),
                                                                                                  ('a5378356-35a1-4349-93f0-afd53cd28f54', 86, 75, 'c4bcddf1-7636-428d-83aa-21e5d5fcbf39', 'northmelyssa'),
                                                                                                  ('a534ad75-2fbd-4101-971c-e1877218d8d8', 91, 40, '8d1b6a76-4dcb-4319-b9aa-52ccf93fee5d', 'sed'),
                                                                                                  ('4dfb3201-7ddf-4dd9-93da-52bab83f5355', 57, 95, '331345bb-8b1a-4039-8427-9806d5802f54', 'odit'),
                                                                                                  ('143fb8aa-6663-451b-b16d-d2bf7332c2d7', 83, 52, '5bef4129-66e4-4dc3-8ea6-2ea4636f9ca5', 'nostrum'),
                                                                                                  ('cd73391e-9377-4dc6-a7ab-a419824de037', 26, 79, 'c7f373b5-57fb-4cd5-b215-f002a39ee97f', 'voluptatum'),
                                                                                                  ('0bb72d28-1fe7-4d88-9d56-605cf050cdfc', 12, 55, 'cbecd9b9-d31d-421d-b69b-319847a28087', 'quia'),
                                                                                                  ('8b06cec8-1605-4dca-ba0c-f7dd35dd0143', 30, 70, '9909fec5-c495-4d5f-bdfb-60e52dd7639c', 'minus'),
                                                                                                  ('bf27b23b-725e-4177-8c26-30f62cc6cd66', 70, 16, '66519ca5-a2d1-4fb4-b011-838d9f77dc0f', 'nam'),
                                                                                                  ('6a40c92f-be52-4062-8b4f-04cb5fff8363', 50, 11, '5dc5e1d5-8774-4155-8581-c18284c50dc0', 'fortjackson'),
                                                                                                  ('0b5b153b-70f9-4717-a357-27a4dc2f7769', 58, 75, 'dd71a8c8-2f04-4644-abfd-5f8b25c1a195', 'abagailfurt'),
                                                                                                  ('bd217b11-cc0e-481a-aea0-a28ac2832480', 30, 44, 'b9280271-fe83-4df8-bb52-6c4f3512d658', 'ad'),
                                                                                                  ('a39bbd46-190a-4518-b63e-4708a6ccff85', 59, 86, '5b7cfd3d-a49a-488c-bf4b-b9e5404f1cd7', 'eum'),
                                                                                                  ('c492a6cc-efcc-4042-94c5-408b9e5a17f9', 20, 49, 'a19f754b-acec-4d73-8c68-d1415488fa55', 'incidunt'),
                                                                                                  ('2e0c571e-2b68-4df2-9196-ba830dd4d38b', 30, 84, '68a69969-8874-42f8-ad92-2097bde38b9a', 'nisi'),
                                                                                                  ('9df96340-5f99-439c-8c51-68463132274e', 30, 66, '78aae877-c639-40d2-86b5-a111682160c5', 'accusantium'),
                                                                                                  ('215bb193-966c-4d67-b272-895e3038df30', 37, 50, 'c41b8019-ae72-4a53-950f-48ccccafe9c9', 'aspernatur'),
                                                                                                  ('a6651380-db3d-450e-88ff-3f1d1c4be073', 52, 34, '16c7ee84-3527-4dd6-8f52-e00839ea2bfb', 'ut'),
                                                                                                  ('30a8cead-8597-4961-bd5d-554c93e8e3c0', 20, 4, '5ae42010-8ed9-4ef7-ba87-f1baa891b74c', 'tempora'),
                                                                                                  ('551f1742-bd27-46c2-aa0a-3aac1f5882b1', 14, 65, '080336ed-dd6f-4a6f-8637-6c80089c7bd4', 'libero'),
                                                                                                  ('65373c0d-d0b0-4e88-be89-8aa644657116', 96, 66, 'ed947b61-f9ee-4968-8087-a84ad7f6fa24', 'debitis'),
                                                                                                  ('1c1a35a8-f3a4-4f19-a4e9-f231cf0e6e05', 71, 2, 'ed53c3b7-0f36-45e1-8fe0-bf70e0f6bb52', 'vel'),
                                                                                                  ('2596c8b7-3afb-4563-ba37-596726e2ad72', 41, 16, '6140d770-cacb-42bf-ae20-8c6f8be956f7', 'est'),
                                                                                                  ('b95fb4af-20d1-42f3-9bdb-c4284a6cc6b3', 59, 55, '1bf6113c-8e27-427e-8284-7c2006077939', 'voluptate'),
                                                                                                  ('3a21437e-890e-4e28-9d48-58d592ade47b', 26, 48, 'd5eabd0e-3326-4c50-8558-b226664b89e5', 'alias'),
                                                                                                  ('2ba70cbc-3232-492f-b889-8d7a7b9cb594', 80, 48, 'cbf9fe7e-b739-4d91-a95a-4331c2c13913', 'magnam'),
                                                                                                  ('1baaf396-e265-49ab-ad3f-6dcf67adece7', 76, 24, '03261cfb-a260-4d4c-b2fa-5656d5c2a9a2', 'pariatur'),
                                                                                                  ('80f23a91-277f-4822-aca6-3665f7c4420d', 49, 91, '3c855511-2f8f-4098-83e5-f36ea200fcd4', 'fosterbury'),
                                                                                                  ('b07567c7-2e0f-4197-9e1a-fc0d74bae50e', 53, 99, 'b036c85b-8de1-4035-99a9-34d1b20c5dc7', 'beatae'),
                                                                                                  ('05473c81-bce7-4da5-bbd1-816afb17993b', 22, 19, '1af79269-d1fc-428c-8b62-e8dbb2d98361', 'architecto'),
                                                                                                  ('01999486-4425-4c5d-8f63-ba91a87592bc', 17, 37, '28376070-42c1-4b5e-bfc8-1ebf5c80f3e0', 'veniam'),
                                                                                                  ('43f9ca45-98fc-4a50-8364-efc994bb05ea', 50, 20, '68ab3876-9591-4554-90b5-5622bd1db447', 'quisquam'),
                                                                                                  ('a198abff-e41f-4213-833b-2eb67568fb8b', 77, 77, 'f9d31969-5bab-4f1c-a3e8-8c8e3063563f', 'laudantium'),
                                                                                                  ('b3bbac71-e059-4593-8825-ab537256956f', 44, 60, 'ef5f72a9-7ee1-41a3-8b0d-ace1b17257fa', 'sapiente'),
                                                                                                  ('6feae8e3-33ff-4fd1-bc2c-089ceb70af7b', 58, 82, '87d41cb5-9bc2-4ffb-b696-ced9f7a1573e', 'dolores'),
                                                                                                  ('f049b2fd-a75c-4615-97ae-a0b4ae0f7612', 88, 32, 'd430aed9-cef7-4289-908f-497ee15f62a0', 'temporibus'),
                                                                                                  ('6deb3a7f-1432-47b8-9ea5-c2303bba2681', 77, 14, '3b8080ba-f4fa-49f9-afad-e3a646f4a203', 'maiores'),
                                                                                                  ('19fa8810-e55d-4dc1-8a91-1853c800314d', 84, 27, '1dc21eee-6661-4483-956a-12478e3c8897', 'lakeurbanland'),
                                                                                                  ('e0836d8d-22d8-4c2c-b4bc-60e829a8ea6c', 77, 18, 'da493448-067a-47ec-84d0-533c72005d7f', 'id'),
                                                                                                  ('4eb034ae-b037-4e31-b0dc-d7f0e0fa530a', 80, 81, 'ff77e57f-63b6-481a-8d73-7520c0a5ec10', 'aperiam'),
                                                                                                  ('c8ce7381-f6e2-425d-86b3-a03a476faa33', 100, 75, '8337d486-a7d2-45e5-88e9-9e92bb579343', 'nemo'),
                                                                                                  ('6c39464c-7ef0-4fb5-96f3-d87860f4e4c5', 86, 73, '22223da1-3220-417b-99ff-64876511bf1a', 'suscipit'),
                                                                                                  ('7577cb79-5f44-4b6a-9d67-b644973874b8', 13, 2, 'bad392f2-bdbb-41a6-ac9e-c5f28f94c3e7', 'tempore'),
                                                                                                  ('ad4191fa-ce8b-46aa-8297-0338c48be78b', 84, 21, '21dc116c-8b60-4655-afb5-e6b8260eab14', 'doloremque'),
                                                                                                  ('17e89a91-d473-4352-8db5-b4d75cb36a4e', 44, 10, '89321f88-0f09-4f97-a889-049c4a0aa71b', 'gastonia'),
                                                                                                  ('e47bafd5-e24a-4b51-891f-1d39eaafe901', 35, 91, '72523326-61f8-4a27-bb20-3c452add8889', 'ducimus'),
                                                                                                  ('0c04d8a7-c98b-478d-a56b-be0316a3f6a5', 68, 9, '26489d8b-5dda-467d-8546-c428dc3a8779', 'dolore'),
                                                                                                  ('7af166ca-4947-4ec0-a8f4-1085825fe6d1', 15, 20, '22fc360d-bfa6-49a0-af05-20afecf42e91', 'non'),
                                                                                                  ('8cb1d5b9-9c64-4947-a3f7-5ba6566f14d5', 79, 1, 'a615e0fa-936a-4948-bb89-59b889b5fc80', 'iusto'),
                                                                                                  ('81c6e0ee-449c-4694-ac99-30093c29b42f', 77, 98, 'c574ec9c-dd0b-4fb6-be1f-45e8afce5054', 'ex'),
                                                                                                  ('6c56eadb-e1dd-47b1-ab1a-7d96ebaef8f5', 71, 52, 'b574887a-6e7a-4888-a01e-07fd285cf46e', 'laborum'),
                                                                                                  ('c97791c9-499e-431e-8180-5f0375f8b784', 20, 74, '8c44dde2-c0bd-4c4d-ab97-1ce1f9b5520b', 'northmelyssa'),
                                                                                                  ('5dd16449-9839-45f6-ba28-baeb6fb3b05c', 77, 100, 'a46c90cd-08a1-45d8-9526-836c248e710d', 'sed'),
                                                                                                  ('36b779b5-7cca-4e18-8978-5380ab18e594', 66, 90, 'a6343e86-a104-455d-ac03-a2fea9558bc6', 'odit'),
                                                                                                  ('ca0c0e74-3359-4638-8cd4-d9059ed2d4e0', 70, 94, 'f320c9c5-28ae-4fcb-a273-f2b8a6d12b49', 'nostrum'),
                                                                                                  ('f390aa6e-97f6-4dcf-88a5-e84e26812e61', 100, 95, '9f395354-5443-4b7a-8b10-69f33348aeb3', 'voluptatum'),
                                                                                                  ('12664e00-2d4f-4540-b940-e97287f1cbd9', 56, 77, 'e08417a8-61b9-4c30-b0a3-b84ef2f7a90d', 'quia'),
                                                                                                  ('dd3192b2-114a-44c2-bcde-7a08e064d122', 45, 46, 'c3904a2b-c076-4507-ab5e-e3c845e20299', 'minus'),
                                                                                                  ('1b38253f-bab8-4dde-a910-53002f38ab29', 60, 45, 'a8739aff-60fc-492f-adf1-16ebcfcba148', 'nam'),
                                                                                                  ('797a3e9a-50f4-4ccf-83ff-1b426dc6951f', 78, 96, 'b3cb3496-508b-423f-93f7-3c878a0e76f6', 'fortjackson'),
                                                                                                  ('2ec7245a-8a6d-47c7-9b14-c71147ac29d1', 84, 92, '4c6d6eb6-b4da-44ca-9786-adae80225423', 'abagailfurt'),
                                                                                                  ('42388ccb-9dc4-4836-a6e8-4f39c90c83e3', 47, 84, 'bfd50324-cb21-4fd6-8c7d-4383f6824a63', 'ad'),
                                                                                                  ('bbd3d01e-4def-4025-bf23-5220b6313db2', 42, 15, '83f31826-174b-4801-9d12-a0f2e2da8803', 'eum'),
                                                                                                  ('edb9e9d3-2e06-4189-8301-936fa2013b50', 85, 73, 'bcde199b-648a-4d07-9546-f67f7ef533f4', 'incidunt');




























