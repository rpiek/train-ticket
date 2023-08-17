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
                                                                                                  ('98ad365f-34f9-4573-a46e-951f743d44ab', 75, 54, 'e188f469-1e84-4e69-9f7b-ed5c0446fbc9', 'iure'),
                                                                                                  ('e25069bd-a590-4b8b-a1d5-eb2082ffe74b', 7, 36, '2da59f83-8609-4fcf-94f4-8eded3cefba2', 'doloribus'),
                                                                                                  ('70395ee6-eedb-4a8c-a48a-fbfa61f8ce90', 61, 88, 'dfe8a6bd-0871-46fd-89b5-c9be3de606c9', 'nulla'),
                                                                                                  ('dfa75ac1-3778-482b-8c95-6e0859780f82', 58, 84, 'aa603774-595f-426c-9e47-b2b8ee526816', 'exercitationem'),
                                                                                                  ('c02bee25-410f-493c-977e-9aa194ca7dc3', 55, 56, '2814d18f-501c-4220-8cab-2a372f86e8cc', 'tempora'),
                                                                                                  ('2dc56b9e-78c7-4223-b557-d73a79342920', 45, 80, '256c5c25-bd65-4ccf-8924-35e597649837', 'quia'),
                                                                                                  ('00d064d6-1559-4c25-a0de-64b397a9413b', 14, 95, '7de7ff34-4f2b-454d-b359-08a298ae1503', 'sequi'),
                                                                                                  ('c33a35a3-a800-4d52-9341-b58d8e5a4a3c', 41, 14, 'b1de0e15-50f4-4199-a159-4d369c59d667', 'optio'),
                                                                                                  ('64af01fb-b9a1-4e0b-9a89-30f9f59e8d04', 1, 40, 'b90412df-19fd-4758-b13d-8de7e80cf669', 'quo'),
                                                                                                  ('2b5c6c80-eaec-490f-9836-c33b7e14f2d7', 38, 78, 'cb06157f-3da3-4e96-b8df-34455c98f4c9', 'beatae'),
                                                                                                  ('806f0100-9134-4295-8712-210cd3dcd1fa', 74, 25, 'ee55145a-c28a-4c47-866c-cbe9040226c6', 'quos'),
                                                                                                  ('1071c69c-6d0f-46cf-97dc-9dd5ecd8c259', 42, 77, '05dc0193-5ed9-482e-ba66-0f134d8422cf', 'suscipit'),
                                                                                                  ('38e62010-d2f6-4e4b-b382-9917bfc21a63', 92, 52, 'a56adf9d-846b-404f-a206-4aa67e2f5adf', 'totam'),
                                                                                                  ('15c5f619-afc7-4eb2-b423-b0ba917d5f3c', 21, 37, 'd0e67eaa-f757-4669-9ed9-1af8f4f91b7e', 'in'),
                                                                                                  ('015aaac1-ba00-45d1-bb62-32c8cd101561', 85, 72, '9f2093c9-7f0f-4653-84ae-a6280800b008', 'fugiat'),
                                                                                                  ('dca84656-9998-4320-b173-e715cc21eef2', 10, 40, 'f4236c42-578f-40a3-97b4-8f9d4661bf3c', 'quis'),
                                                                                                  ('73dbf560-9436-4ae6-8ba8-3abc6d972f5e', 53, 17, '70ca1ae2-8ce0-4a32-8cd3-61c5657c8ff0', 'portjewell'),
                                                                                                  ('0b84c430-3e33-4bd5-9b21-6f1144c947c5', 66, 71, 'd622d71e-c309-4be7-b03a-7a2414ba021c', 'molestiae'),
                                                                                                  ('682b42b6-13e4-4bdd-a961-375a17665874', 71, 62, 'ee35dc0d-4cb5-47fe-bad9-1a140743f565', 'possimus'),
                                                                                                  ('bb99862f-8641-47d0-8ad2-151f0680f0c9', 69, 93, '3bb72a9d-fbef-43f6-bbba-8c1799c3c61e', 'minima'),
                                                                                                  ('cf351dc2-ecc3-461a-980c-aa2a36fb17cc', 86, 97, 'aaf26127-bcb1-425c-9c03-9ef8b58812fa', 'ab'),
                                                                                                  ('bc91e8e8-0749-4f3d-b30d-9e586562fc0d', 95, 28, 'b4bbe1ca-526e-4963-8170-b5937a660f1a', 'lilyanfield'),
                                                                                                  ('1c02e277-4a4b-43e9-8f47-5e4e14051e1e', 54, 35, '860d7220-8664-4961-a179-84efd7834d37', 'labore'),
                                                                                                  ('786bd925-69ed-4ba9-a313-3c46a1cc6001', 49, 86, '52cf78d0-6406-4a09-bca3-db029a2ba747', 'veritatis'),
                                                                                                  ('5f47d392-d963-4710-b1c3-caa69fd8598a', 5, 85, 'a594b44e-6926-410a-9176-9433b31d7b25', 'soluta'),
                                                                                                  ('8fddaab7-9a7b-4fe3-8e8e-79779f80f2ce', 72, 5, '97445236-7d6e-45f4-80cd-027c0945e69a', 'cumque'),
                                                                                                  ('54f3016a-1835-41c7-ad0f-d640c4d7b0f4', 96, 11, '2c070b9a-6ed6-41b3-8b3a-85f94f43ff33', 'maxime'),
                                                                                                  ('17cd6ea9-57e8-41f3-9371-c12b547e9b48', 36, 4, '97a66e70-2873-4456-b108-945d6406d49c', 'ut'),
                                                                                                  ('fb212305-b8c0-469f-9c68-2cfebfea2707', 61, 91, '91a48951-dc7f-4fe3-99c2-3bc3b21ebf1e', 'nesciunt'),
                                                                                                  ('51883064-993f-4121-82b7-581ac0d1ee54', 7, 33, '95f9a337-7903-4ccd-9e4e-2e019931a59c', 'similique'),
                                                                                                  ('675318e9-db1a-473f-8e3f-bba12ac81c3c', 7, 81, 'c720f892-d227-47d2-b4a2-3afc203056be', 'rerum'),
                                                                                                  ('313f05df-8707-4318-882e-9de334f60c90', 64, 48, '5b488719-2a0c-40af-be80-627c79a8a576', 'officia'),
                                                                                                  ('d26ebc5c-55cc-49a7-9704-85cb9b63bbd7', 11, 28, '12555eca-1496-49d2-b90b-2edaaaac7cbf', 'distinctio'),
                                                                                                  ('5e1b2163-dd56-434e-97f7-51782f7dc1d2', 92, 90, '2b652d16-bf05-447d-914d-983ea554b3fe', 'corwinworth'),
                                                                                                  ('5f3691bf-cb90-4bb0-9fe9-5c1ba33284bf', 81, 44, '54e7a4b9-cf23-4166-a84c-da4de9c22a38', 'rem'),
                                                                                                  ('ab524926-3fc8-4b5c-a31a-10a760edbd6c', 37, 86, 'c672b2f4-1578-403b-afe7-8d7923b78f27', 'voluptate'),
                                                                                                  ('dc041c53-18b6-4350-882d-e1b5a574d76b', 0, 70, '53047e30-9cb7-4360-a356-1e655a6cdd0d', 'enim'),
                                                                                                  ('08949771-c363-47e6-8ba0-689f628fa4f2', 22, 52, '38da63f6-af81-4c3a-a699-59778ff6f471', 'voluptatem'),
                                                                                                  ('6911aacc-b495-4f3f-b0f9-5804b1b76bce', 30, 72, '87f1614a-1172-433a-908e-040f6a8c929e', 'numquam'),
                                                                                                  ('a47ab5d7-0e4d-4dbc-814c-1188983e5b58', 89, 3, '2f38e78d-8071-4d11-94e1-82e3cb8bc071', 'quasi'),
                                                                                                  ('d7179d62-effa-417b-859d-2eb936d0f87f', 72, 96, '48833127-0849-480e-89da-7680bb545cdb', 'isobelcester'),
                                                                                                  ('4f56da0e-df86-48e2-8421-2f3f9ed81c08', 38, 92, '569291b7-4bc1-4dac-b81b-7b7f1bea09e5', 'voluptatum'),
                                                                                                  ('572ce65c-f3ad-4388-b281-ae9a37de0417', 21, 31, '80b7f3f8-be92-4325-83b0-757ce5aaafb0', 'southhill'),
                                                                                                  ('b24cd3ff-5b5e-40bc-acd9-067c4d5464d0', 50, 55, 'a3c81fc7-66ff-48c9-ad78-57719d8e9204', 'ipsa'),
                                                                                                  ('5410200b-9f8c-42f4-8860-39867e2cd95f', 70, 30, '542ce94e-d403-4df3-b7de-ce5652e567ba', 'velit'),
                                                                                                  ('c5477aff-dc1e-41c6-b000-216b4e01cffa', 44, 23, '7b05a2f6-df8c-42a1-be7e-b74ec1c8e09b', 'eastsaulmouth'),
                                                                                                  ('a036b6fe-3ef2-46de-82c9-005a3ac7be28', 77, 15, 'b9400633-86d3-47f9-b865-66908a7a5815', 'libero'),
                                                                                                  ('b011fafb-c6ea-43a4-92c1-cc4ad6b62c4d', 28, 62, 'f500bd6d-79b6-4d91-bb40-de0f946f8ea7', 'animi'),
                                                                                                  ('15c305a7-9e6d-44d6-8435-b15080fccb6e', 24, 16, '780ecc83-b4b2-4f43-a4bf-708259fda30d', 'madelynnbury'),
                                                                                                  ('7109bfda-8ae8-428c-8e3c-fc1eab5d664e', 72, 73, '6942b9de-43f8-456b-940a-02cd4f605569', 'eveniet'),
                                                                                                  ('3472954f-05e4-4c46-972e-0254d86d0dca', 74, 98, 'c8a9f29d-5c63-495f-a3fc-f63da703cfba', 'iure'),
                                                                                                  ('77d9d306-b462-49a0-83c8-ec667253e265', 4, 72, '87de4c14-ddc0-481b-a884-4d2c90bcdcf1', 'doloribus'),
                                                                                                  ('1fa41ea5-5b3e-4962-bc2d-2d4414a1fd92', 95, 64, '8478c6a7-963a-4261-ae47-d8d2fbf85305', 'nulla'),
                                                                                                  ('d0356e24-1092-496e-94a4-8fed8b6c0d6f', 18, 63, '5f67df2f-6efc-49d8-ae74-924f07c8aa10', 'exercitationem'),
                                                                                                  ('5dd040f8-a3a9-4837-80f8-062cb73698e5', 64, 5, '413ed62c-be8b-4bb2-83c9-6f1ed03449b4', 'tempora'),
                                                                                                  ('bb25ef16-a368-4606-b225-c5b0c875ef26', 24, 54, '553255e1-1206-4308-b9ef-6bd73c43a1b0', 'quia'),
                                                                                                  ('ae8e0232-17aa-4cf9-9af7-e4ade3c22303', 3, 86, '217156b7-4577-4874-9eee-46cf3354c05b', 'sequi'),
                                                                                                  ('d4b0ae85-72c9-45d7-9a07-649f0e580c21', 51, 81, 'a28522b8-20dd-477c-ba3d-2bf66067e366', 'optio'),
                                                                                                  ('ef540576-afa2-402d-8bf8-f7f15e8ec87b', 25, 86, '8baacc53-b5af-40ae-adaa-b89e55bb20a4', 'quo'),
                                                                                                  ('38915d49-ed18-49b1-bdaa-6a5526e3874a', 58, 98, '8665c5e7-5374-44a5-90c6-677a20b7774f', 'beatae'),
                                                                                                  ('c3512737-b62c-4c30-b434-33331a59f913', 51, 5, 'ff43674f-748a-4f79-8163-a99599809d13', 'quos'),
                                                                                                  ('d5b4687c-5d09-4ebd-b4a3-d85fa66d2dcc', 93, 75, '282b30fc-23ee-442d-bc50-80b04d693380', 'suscipit'),
                                                                                                  ('bffccd73-6a7d-4d15-9956-bfec3ff12c67', 78, 11, 'd164db4a-91e7-47df-a15e-638ac96acf16', 'totam'),
                                                                                                  ('859f27c6-750d-46a2-ba79-308970b16838', 49, 67, 'ce09baf6-21e9-4b4c-ad0f-24e28ea97c78', 'in'),
                                                                                                  ('065c801b-d052-44a0-b44e-c197a2fc2330', 85, 40, '0f6b6cd1-8a6e-41ce-ab30-cede54b4253f', 'fugiat'),
                                                                                                  ('2d077df0-d7ae-4742-bfa8-f79ed04d71c1', 50, 17, 'b88abc4a-5a08-48dd-9897-542904bf1e7b', 'quis'),
                                                                                                  ('8f43540d-bf7d-4fe6-870e-5e9e3ef7a29c', 97, 31, '26bf9e8f-9a4d-4b58-b477-ba59c4ea02e2', 'portjewell'),
                                                                                                  ('1c4d2bbb-9c4a-450e-a70a-5a340e38fe25', 94, 0, '8c207566-ba81-4474-9297-70464a8fc96e', 'molestiae'),
                                                                                                  ('cbc4b4ba-8f47-4c1e-80b6-54f0bea972a9', 30, 18, '0fb92750-a5dc-410e-a1e1-70bf7d6fae0b', 'possimus'),
                                                                                                  ('d002deb7-4c1b-4e16-a00d-da3d6106802c', 42, 83, '34f8050b-a4f5-4d13-903d-c6e269799342', 'minima'),
                                                                                                  ('1bb5bd22-1645-47ec-93e3-53f9157857df', 68, 93, '7b71dee8-7471-4544-ae96-cce8b659dac3', 'ab'),
                                                                                                  ('3f06df67-8fc9-48a9-8657-5416a7606fd2', 50, 48, '837f462a-eb75-4a2e-93e2-a42a50eafc7e', 'lilyanfield'),
                                                                                                  ('68f2bc81-a724-4d0d-8749-7e1711d215f1', 64, 31, 'ece453dd-6265-4438-883d-68b3242cefe2', 'labore'),
                                                                                                  ('40dd2f99-45fc-47c3-8a46-3eb340422f29', 26, 29, '7753cbff-1a5d-4d56-b526-f98673d1469b', 'veritatis'),
                                                                                                  ('0971d5e5-4ce8-458b-aeb4-36c85830a2eb', 96, 28, '52794550-bc8d-4e10-8728-55adae844c02', 'soluta'),
                                                                                                  ('948fd371-8dd7-4b6a-8469-a7e466323657', 100, 41, '01a14338-632c-4dd1-ba31-46e02c6c274c', 'cumque'),
                                                                                                  ('cd511343-6a22-4bcd-b87a-6dfc8f78261e', 4, 79, '4dbd0b07-21be-4c23-8b12-399a7ccae589', 'maxime'),
                                                                                                  ('1992c8b1-5bec-4a86-a02d-7615515d7965', 54, 96, 'a15412e1-a9b1-4480-92aa-33a53ca5ca63', 'ut'),
                                                                                                  ('85e54e3a-2d1c-4ac3-bec4-ea6d28fcda6f', 26, 67, '84b74458-4089-457a-a577-89a039325f99', 'nesciunt'),
                                                                                                  ('e0ecb0fa-9dc0-4fbd-bcf0-700f66b20c82', 71, 76, 'b807339f-b45b-4920-8d4a-3d49f58ed78b', 'similique'),
                                                                                                  ('a4162f69-d1a0-4b29-a438-e03b5bf0166c', 5, 39, 'b1e1264b-9644-4f1a-a0b2-de4daf04f166', 'rerum'),
                                                                                                  ('fd951916-7504-46b5-8e5b-3270ab6eb113', 39, 25, 'b2c1ff3b-5b4b-42c6-a45d-c23400f59dc5', 'officia'),
                                                                                                  ('e02f273f-28e4-4ff6-8153-0d60243c49cd', 27, 80, '73ee3d85-cd01-4c50-89b4-caa11ba7b4a2', 'distinctio'),
                                                                                                  ('0ba1f64a-80de-40f3-988a-34327955728e', 85, 96, 'b924ec03-b8b1-4508-9da6-f4fd6e6d060b', 'corwinworth'),
                                                                                                  ('8d61e861-6391-410e-bc0c-1c067a6f1d36', 22, 80, '51fc8f56-63aa-4218-9b2c-ff08a8418829', 'rem'),
                                                                                                  ('c3ff8c5d-ee35-4a6d-a019-2f61e5a54507', 45, 65, '9fdce06d-7a53-4d1b-9f2e-71001590fe03', 'voluptate'),
                                                                                                  ('fac4de39-4710-45e8-a7a8-d13ecd6d6a4d', 57, 1, '87d0eaf4-0fca-44ff-b6d9-0405ffe09856', 'enim'),
                                                                                                  ('fe319bea-aea2-4ba0-8770-08b31e2ed30c', 32, 34, 'a7925301-4b3c-4fa0-9d1f-de39fdc217e5', 'voluptatem'),
                                                                                                  ('2b9c5059-71e2-41ab-9bf8-abffacbe3cbd', 65, 73, 'e061bf53-361b-4dd2-a458-42a8253786e4', 'numquam'),
                                                                                                  ('12b36197-f48e-4db1-9f41-e67e84957db7', 36, 86, 'f567ad40-f87d-4461-98d9-883a722bb847', 'quasi'),
                                                                                                  ('dbb66796-e24f-4f09-b9c9-c7cde945042b', 99, 28, 'd23c3d92-fcbf-4bcc-87bc-2fabd19ec529', 'isobelcester'),
                                                                                                  ('de8fbaa9-9932-41be-9f6a-99d14d117418', 19, 22, 'eb8af7e1-265c-493d-95e3-a5de0c60da49', 'voluptatum'),
                                                                                                  ('e9c75b3f-6a76-4890-82f7-af1a58cc3c14', 59, 21, 'a5dceff4-95a9-4083-ae51-eaf1225bf095', 'southhill'),
                                                                                                  ('cbac098f-04d1-47fd-b445-44dc7b8c41b0', 62, 22, '0c154358-5128-4535-8731-bea5866d94c2', 'ipsa'),
                                                                                                  ('040500bb-dbd1-40c9-a2cd-56dfc275e321', 10, 13, 'd73f5dbd-e83d-40ae-9a51-3c451af3c779', 'velit'),
                                                                                                  ('0ac8aed9-a838-44f7-8c75-63a0434e6857', 81, 29, '93ca46da-33ae-4d0e-8b18-6a529e5ca067', 'eastsaulmouth'),
                                                                                                  ('0900a884-1000-4265-bbe9-09fb3e7f6e11', 99, 42, 'fe43aa97-7107-45aa-b42a-1bf4a07283c3', 'libero'),
                                                                                                  ('11967515-b70b-4bb3-8d9f-aaa2a19b7f10', 84, 23, 'ac9f3011-7932-4e20-96d6-5aadfc572d30', 'animi'),
                                                                                                  ('0e666056-ebdf-495a-8c03-b069000e192e', 47, 48, '8fa5dfc5-6ac8-46ac-a080-95f43d18eb77', 'madelynnbury'),
                                                                                                  ('043f6fee-a3b7-4847-a603-bf03f161024b', 74, 65, '2bd866d1-1ddd-4225-af7d-0fbb50e1d8ba', 'eveniet');


























