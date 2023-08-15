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
                                                                                                  ('9803f6a8-c2dc-460f-8040-858cf4001153', 80, 76, 'dea94bc0-0509-4ab1-8f3e-8e6186bc48cc', 'dolor'),
                                                                                                  ('5bfe3eee-2e66-49b9-abb2-e972b38c4cdb', 24, 34, 'a10a47f5-ee28-4a74-8a72-408ee84fd7ad', 'sit'),
                                                                                                  ('d44c5343-d660-4419-8874-e3bdd4494476', 40, 99, '067c193b-b944-4589-9ab2-2ac5bd2da586', 'minus'),
                                                                                                  ('6d2edbb5-1d8c-4195-bc43-9ab793c2f5ff', 3, 25, '836903e3-3097-46f1-9630-3be81f6ca6c8', 'soluta'),
                                                                                                  ('85f2e14d-7e2f-41de-bb5e-b0c1e7c5de0b', 40, 3, '2b079ca4-8abf-4824-a887-19c8c49090eb', 'tempore'),
                                                                                                  ('22305e52-57b9-46f4-b1cf-30ceeb7b9ab5', 34, 20, '4bbf0905-9728-429b-bf6f-5763e8ec3be3', 'ipsam'),
                                                                                                  ('e48ef00a-1485-4fac-91c0-1149c5a8fdd0', 85, 36, '85dbe566-8a48-47df-8bf3-1bd285c78ed0', 'eius'),
                                                                                                  ('38055196-b43e-4f16-8cfb-be322f287c04', 41, 29, '4bcaa940-f27a-417d-a8fb-8a9e0f10b10c', 'minima'),
                                                                                                  ('c29d502a-31a9-4412-914b-1e68bff4afdb', 26, 9, 'e2457abb-e4db-4a47-9e61-38814403fd91', 'eaque'),
                                                                                                  ('aec9319b-d79a-4774-bdc8-9bef192222bf', 31, 18, '98aa483c-1fe5-4af2-989a-8b2824a0461e', 'autem'),
                                                                                                  ('6ea348a7-8ec4-442c-8397-9e47a4916a5c', 72, 69, 'f94f36ff-d80f-4041-9ca7-4962b4b3cfcc', 'harum'),
                                                                                                  ('ef47d2ac-43ad-4b97-8e42-8b6c78d00f02', 84, 47, 'b86eb425-6d02-49ee-9698-eeb90a77f8f3', 'repellat'),
                                                                                                  ('cf0584cf-3c6f-46bc-9091-9caaf3604d27', 12, 1, '2cea34b8-7b38-4e7f-bd8a-da32a9730543', 'ut'),
                                                                                                  ('753e3f5b-2667-4d07-968b-9c0374a109b4', 32, 41, '085e0999-70da-4c19-9aaf-b58907170be3', 'dignissimos'),
                                                                                                  ('4060a90b-1b05-4e40-ab26-ad89702f4370', 47, 27, 'abab8358-b919-434e-808d-e3e6dd2f20a0', 'eligendi'),
                                                                                                  ('6fb2c206-d24f-4c46-9341-a2d0b297fc3e', 35, 99, 'dadb81c0-5231-4dbd-9bc1-ee1a4c8be11a', 'ex'),
                                                                                                  ('02f2f75a-f3b8-42ba-9108-61022743dfd8', 75, 27, 'bc77d228-8c28-4e24-bb3e-dfebb3f91535', 'in'),
                                                                                                  ('f7140e00-3af4-4fd3-8553-0326ae86814e', 91, 21, '7161bf8d-8352-4276-95e3-731efdc041b0', 'beatae'),
                                                                                                  ('5928a7fe-eab8-4329-b8f7-b82b7f77b261', 17, 70, 'd7ad09da-67dd-40e3-b589-5d6158ddc68b', 'perferendis'),
                                                                                                  ('04963d24-b88d-4c0e-8021-2c4cf99059ae', 10, 94, '23b7c90f-1df7-448e-a3ed-4229fcf3d1e4', 'quia'),
                                                                                                  ('20b30643-c715-4667-b71d-e79994c41d1d', 37, 37, '57a7d7fe-2494-4424-9454-c7333f9620f2', 'porro'),
                                                                                                  ('6d215107-36e7-4da7-b595-324d9bb5755e', 18, 36, 'c7a0c223-a039-4603-bbf8-69f6f168cbf0', 'corrupti'),
                                                                                                  ('ed2c33c6-d1a5-4fa7-815e-e07e398029e4', 92, 74, 'e40eb76e-7008-4825-8514-d5d98dcf5843', 'nemo'),
                                                                                                  ('ca99c7bb-d6be-4707-9e2b-255375cf673b', 25, 91, '9778af50-001c-43f5-9d0a-999a5411fc16', 'ginachester'),
                                                                                                  ('cfa44290-b587-445e-b413-3ace764c6d90', 1, 97, '3e9e877d-8dcf-49af-86f2-c1b03ce3e520', 'marianostad'),
                                                                                                  ('9cc8ac72-4c72-4bbe-8e1d-3ed3c3f4fb93', 35, 81, '884e494b-bb94-4374-872b-604380380856', 'doloribus'),
                                                                                                  ('94bd92e1-27fa-4355-bb6b-3c336011bdc5', 52, 23, '913ec856-de47-448f-9720-ac7563a5786e', 'distinctio'),
                                                                                                  ('a327015d-6b7d-46bf-98c3-63d015361faf', 79, 5, '7f1d8244-37a3-43ff-bfaf-878f5508835b', 'tempora'),
                                                                                                  ('1c03c3aa-119c-4d84-b954-c9e24385d4b0', 45, 53, 'bfab7d5c-6bdc-4fa0-96d7-11311add80a9', 'error'),
                                                                                                  ('d0d37104-013a-4564-b54a-ab18075ebf14', 31, 32, 'b84fd601-2fb0-489e-bc6a-1d1c24ae0891', 'quasi'),
                                                                                                  ('ee169463-7fad-4630-824e-f4d1c4208995', 4, 57, 'f04405b4-d5cf-4ae7-bf37-a7b75a4c867b', 'non'),
                                                                                                  ('71efe280-fe9f-4c3b-9714-a97f446facbf', 8, 56, '1592eef1-708f-4967-b5b0-241b5fb81232', 'dolorem'),
                                                                                                  ('e31dc94e-4326-445c-bdcf-f169696cb8b9', 82, 7, '89c7d000-9af8-4b38-839c-d10c4cc5da17', 'perspiciatis'),
                                                                                                  ('69b4e285-d220-4d8c-95bd-174fd792a8cd', 99, 76, '2c1d5e02-f95c-4544-b0d9-2177588b0cdd', 'eum'),
                                                                                                  ('48123dd9-6755-4a9a-8129-d84bee55252d', 93, 47, '5d49d6d2-4f93-4ac2-ad2d-4d79853df875', 'aliquid'),
                                                                                                  ('b8b98127-d1cf-4bc5-8c7c-43d717d3f219', 87, 83, '4c229a11-7808-48be-b3ec-8cbfa5acf333', 'voluptate'),
                                                                                                  ('9715ecd8-cfc4-47ff-8358-5b59cbf1726f', 71, 34, '0c7059ba-ac3a-43f7-8c41-271374818831', 'cedrickburgh'),
                                                                                                  ('e5b3954e-51c7-4e4f-9269-c7f8e72c6a7c', 82, 76, '33a1b5ce-d422-4a45-bc61-26acc91f6294', 'portmaximilliabury'),
                                                                                                  ('568ede53-90f0-47b1-babc-af41bd53901e', 26, 72, '3c13cb74-3582-4a5d-8c69-f28c15af4fda', 'newleonorachester'),
                                                                                                  ('8bfe6ef4-778a-4713-9d36-d11baa315977', 36, 66, 'e30aef70-aa7a-4334-b82f-4fa0675a74da', 'atque'),
                                                                                                  ('6c015c0a-470c-4020-8e5d-c91500ba0bea', 29, 90, 'c703675e-4cf9-44ed-91ab-2b4263dfc18e', 'fugit'),
                                                                                                  ('31c65ceb-66af-4115-90a4-240d9f9197b9', 91, 63, 'd480cde5-6ea8-45cb-94a3-f9b8417c2c25', 'repellendus'),
                                                                                                  ('c7df7b8d-f55c-44e5-9a75-56045a522891', 13, 34, '85e9ed1a-ca55-4c6d-8b3b-a910bb6e6ddb', 'fugiat'),
                                                                                                  ('04599d45-cc5e-4956-9618-c7cf416454a0', 96, 26, '3a8dbe55-d67f-405a-9332-f14c11e9dda0', 'officia'),
                                                                                                  ('f9b84eee-cb9a-4e31-9c75-13e3f0a30364', 76, 35, 'b925dfdd-dfe1-4239-8121-97f4491f33d3', 'nesciunt'),
                                                                                                  ('490a15ab-8d2d-4148-9588-dadea8c4bcc9', 69, 90, 'bff5560f-8c75-4e72-a804-f836e29443c3', 'doloremque'),
                                                                                                  ('54d775d2-3b64-4c9f-aea5-5dd2f3a9c3ed', 52, 98, '3ef48169-6d9d-400c-9f95-e55026aeb6bc', 'quo'),
                                                                                                  ('d3a2ed72-a20a-47c9-b404-9e5c4cdbac4c', 93, 60, '2a74576d-cc97-42f9-9d03-8f8b31a0606f', 'cupiditate'),
                                                                                                  ('1ea08d69-0f79-4734-8925-3e5a4543ae4a', 98, 77, '9565a313-7795-4e48-a9bd-5d7aef69eb52', 'eos'),
                                                                                                  ('e3b3624d-8dbe-4112-b70a-227514cbb34c', 63, 19, '893d9839-85e1-4496-a8ad-fd96dc9e958a', 'culpa'),
                                                                                                  ('a76c2258-45a3-40a9-9c76-0de7730da024', 60, 97, '2a27c071-2c7f-4c6d-a469-f4292f430e3f', 'dolor'),
                                                                                                  ('15b1d058-e004-4c3c-a251-4f88ea3561d3', 26, 25, 'f4757272-d2b5-4cbc-95bb-403dd8cd2511', 'sit'),
                                                                                                  ('0359aa7e-602d-4b66-8765-1c09b9735360', 80, 54, '19af9470-e49a-4c55-90c8-a3a92a66ce83', 'minus'),
                                                                                                  ('1bdf2ae8-6bb4-4593-bf49-0a69468a611a', 93, 56, 'de4f4cab-648b-4e52-bd64-ee4a813ee206', 'soluta'),
                                                                                                  ('a80a9a4f-ebef-4659-8193-1ec1d2df812c', 56, 59, 'c174179c-0cd4-42e5-8d1a-36be36b47f47', 'tempore'),
                                                                                                  ('1de5c6f7-962a-4cd5-aebd-5a8a58a85213', 23, 69, 'bf92cfb8-fc30-443d-96be-15234ab34ae3', 'ipsam'),
                                                                                                  ('ac9e096b-bd8a-4667-8331-8d8f1135a323', 66, 55, 'c0cabd85-88b1-4f0b-850b-c9327a55c437', 'eius'),
                                                                                                  ('55b32bfa-e3f2-498a-98a3-ee4c8c5d2b83', 68, 50, 'c8e2d152-2dc3-4452-9021-d6a33fbab031', 'minima'),
                                                                                                  ('2cde0a22-113e-48b3-84d9-9c40d88b45d8', 79, 0, 'a416c504-951c-43a7-accb-e99622ab8e5b', 'eaque'),
                                                                                                  ('ef15988b-c3c5-49b3-9ad4-dcaf62e448a7', 42, 7, '2981e348-525a-4e8b-aecc-54bebabe0e4b', 'autem'),
                                                                                                  ('c24334fc-9cf1-4a9a-bcf8-6047db02cc87', 61, 26, '64c43c55-7e4e-4bc4-a4d8-61c2c7a2f18d', 'harum'),
                                                                                                  ('d20886c4-80df-41b0-8b09-dc6df1d7b87f', 91, 70, '4899ccc1-233d-420f-959d-f855d1f7d6aa', 'repellat'),
                                                                                                  ('808e9d0d-ab2e-4b32-b67c-bfd7ec1f19ca', 39, 99, '28a6f419-522d-41d7-9b85-42fa0ab80c84', 'ut'),
                                                                                                  ('f4f165a7-e9c3-4db4-9d32-0b487725e32e', 74, 14, '70874e02-3cc0-44a0-8bb6-f2771efb2c3f', 'dignissimos'),
                                                                                                  ('19e91dc8-cb02-4294-b9c2-89ba64484d35', 49, 98, '0c70bff3-aab5-4a44-8b43-de24e3d78ecf', 'eligendi'),
                                                                                                  ('0d6b37e0-b25f-453a-854c-3afb65c88a6f', 84, 48, 'a9e7df45-c319-40c9-a121-983669cb43c7', 'ex'),
                                                                                                  ('90501df2-01f0-49f9-8baa-e855bad44f26', 17, 12, 'e8b1f0b5-1a86-4ef4-a8bd-b83a9d2707cc', 'in'),
                                                                                                  ('89607bf7-48c4-42d1-9ea0-e09467dba149', 91, 75, 'b8daeb47-9e14-4d48-98bf-9a8600e4b445', 'beatae'),
                                                                                                  ('96c09a40-500e-4186-8a50-9c4c48b4d771', 32, 65, '945a7370-7504-488d-984e-15879817f573', 'perferendis'),
                                                                                                  ('8a740bee-4e04-41e6-9209-2fec7fe181c9', 56, 96, 'd2b0f97f-29a8-42cb-bffd-1ea4b230f36d', 'quia'),
                                                                                                  ('935ebd4e-2722-4d69-94a4-ddc7cd4b6b18', 22, 47, 'a7edb210-239f-43fe-a606-2a50acd34116', 'porro'),
                                                                                                  ('bee54fbb-f705-4703-b475-397521a545ba', 26, 1, 'b3b2a8c8-cee3-46dd-aedc-694d4d9c2590', 'corrupti'),
                                                                                                  ('054c7014-5235-4eef-bb89-bcf491e1b67e', 6, 3, '15764ead-30a6-430e-9317-d19d5f7bf503', 'nemo'),
                                                                                                  ('cbdd994a-9774-4181-8959-6bcba4f0c7a5', 73, 73, 'c909f9d0-19e2-4fe3-bee6-ec77f89dcd23', 'ginachester'),
                                                                                                  ('c985c704-bbb3-4f41-a8f5-daee4dccca81', 82, 79, '2a8059b5-297f-478d-9d6d-b28478e214d2', 'marianostad'),
                                                                                                  ('b355f0b7-4e6a-4493-b51c-4bb021e37084', 83, 54, 'e6a43b53-0d28-4239-9ed5-2d4f4c88d14d', 'doloribus'),
                                                                                                  ('0c2200f3-2ed5-4090-b09e-5257264989a7', 23, 36, '90da9e1a-a443-4b8d-b578-a659d4ee9079', 'distinctio'),
                                                                                                  ('cd377509-7e3b-47f2-80e1-67f1b74a2655', 92, 80, 'ff20b46b-e16a-4ed2-bd69-6a6588c43e2f', 'tempora'),
                                                                                                  ('b93714d3-046b-4db7-b5d6-02709495a2f7', 16, 24, '24790974-7813-4b99-a6db-7b44a7715802', 'error'),
                                                                                                  ('e7fca2fd-2a10-4708-9c8b-bef3ae1b8bec', 89, 49, 'c94c9864-4d70-4ce0-8e08-f3dffa1f84bf', 'quasi'),
                                                                                                  ('3eb455f4-ccb1-4af6-8af7-a6f37c9f8c1f', 29, 24, 'ddba1e0f-9373-4766-9d54-8d17468a72ea', 'non'),
                                                                                                  ('908c9b5c-6952-4526-9a05-2dbb08b709c5', 25, 56, 'f9f08bd0-fc3d-414c-a3c5-c82fb65f01d2', 'dolorem'),
                                                                                                  ('48fbf970-6207-4d79-83d5-d27a30684f7e', 0, 24, 'a2e69953-9379-4f13-8af6-a361b26ab787', 'perspiciatis'),
                                                                                                  ('cd29f56d-fcd5-4946-8fd6-5934708f4083', 42, 74, '9fd9dab0-baeb-4375-b2be-1f353a51b9ee', 'eum'),
                                                                                                  ('42463ead-a8dd-41da-845b-1975277e07b1', 1, 71, '613081b4-ff1e-498b-a88c-7143b3f6279c', 'aliquid'),
                                                                                                  ('c972fdaf-2ec9-4280-9f07-d9066883cfba', 9, 41, 'a2a02200-6687-4cb9-8a54-2f5e26625acc', 'voluptate'),
                                                                                                  ('089e7c57-2878-478f-b59b-6122b0f7c90c', 66, 94, 'f0fd769f-f0a2-4947-92cc-5b58a3fbe1f8', 'cedrickburgh'),
                                                                                                  ('0470deaa-1d15-4dd5-88d2-2cf9553e924e', 92, 44, '5441cd1b-d1d1-448b-9945-d850eb8d95de', 'portmaximilliabury'),
                                                                                                  ('1458e65c-b9c2-4188-ae99-013e04d17acb', 46, 6, 'ce8979ab-3bec-4bca-95e1-6cd6893b0df3', 'newleonorachester'),
                                                                                                  ('b4bad636-46b0-484f-a960-654abf319b20', 40, 70, 'cafedc0f-12ea-4d9b-8eef-6f4219a30abe', 'atque'),
                                                                                                  ('27684a0f-770c-4bcd-94de-52fd5861f852', 47, 61, 'ecd92e02-a51a-4360-ac45-7ca18da5522f', 'fugit'),
                                                                                                  ('99fedae5-4304-4941-b2f7-b463306fe85a', 45, 42, '498a25bb-2364-4991-baad-041b5041a51d', 'repellendus'),
                                                                                                  ('78a6d279-47e0-4fa4-960c-5ee5b7563972', 85, 68, '2127d9cc-3e3f-4b65-88ee-54bde15c9721', 'fugiat'),
                                                                                                  ('5fa58e79-5f22-404b-81fd-b489018dcf84', 38, 55, '38429e32-e780-4dc1-8600-96619ab827d3', 'officia'),
                                                                                                  ('07a164fc-cd5e-4ffa-93c0-07ec7e0dc49c', 3, 91, '4f0c5927-1359-455f-ae3b-c5079abeb4c2', 'nesciunt'),
                                                                                                  ('b7615894-b64b-4c10-b04b-aea2d72f0808', 5, 62, 'eeb161fd-0a8c-4199-94ff-ec990f74ac89', 'doloremque'),
                                                                                                  ('827c7a07-73c1-4b8f-aa41-a0a14fc0bb6d', 34, 81, '034aec84-41f7-4ba4-a633-c05cba2b13a4', 'quo'),
                                                                                                  ('c609f057-bde1-45c6-a327-d588f2cbe03d', 42, 33, 'faf38147-de45-485b-b68c-d12936bb53b8', 'cupiditate'),
                                                                                                  ('151f7ea7-5bb2-40c9-8d98-f810ffe5325c', 42, 56, '9834b470-b2fb-4d56-827a-d3e2590acc19', 'eos'),
                                                                                                  ('ce2cebf1-b2ed-4bde-ac62-9fb7c8044dc0', 87, 82, '79e0cb11-0acd-45c4-b9dc-a01dc65770e9', 'culpa');























