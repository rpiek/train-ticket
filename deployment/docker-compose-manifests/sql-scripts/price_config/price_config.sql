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
                                                                                                  ('bed82ce3-33be-4f64-8a5a-457e7873053b', 77, 39, '754e6770-df04-48d7-bb51-28cde2c012e7', 'dolore'),
                                                                                                  ('2116371c-a0dd-4c58-a56a-34f2d2cc0d8a', 17, 0, '1e42f08a-1ce3-453d-8a2e-214c5fdd1d28', 'earum'),
                                                                                                  ('d8fb2c55-2931-4f39-8aa9-d73bf4948c64', 41, 75, 'd66d23e9-cf43-454b-870b-bb8c501ae007', 'placeat'),
                                                                                                  ('d669516e-b1ac-46c2-bac1-889c575a004a', 77, 3, '1dee3ec5-508c-4843-8df5-9c3b237b83fc', 'consectetur'),
                                                                                                  ('2db69cd6-b41d-4ecd-a1cc-16653d591fd8', 37, 1, '6652df36-0013-455e-97d8-6b941dadc6f6', 'quidem'),
                                                                                                  ('30a3b514-1fe0-4360-8231-3650d5ef1c1c', 81, 16, '35c8b38d-1f53-4fa8-aff5-6db7ff832acf', 'adipisci'),
                                                                                                  ('f3b379c2-add1-4590-b4df-91ccb54006a4', 91, 37, '29a2d23f-dddc-4ed4-83b1-b21f925b6143', 'iure'),
                                                                                                  ('59f09de9-b7e1-4b86-b6bc-ac558602d98d', 41, 69, '070e452c-16ac-46e8-9ef6-4e4c154f5028', 'ex'),
                                                                                                  ('f0ec93ac-c081-4832-98b2-e3fc53dcc67e', 28, 17, '3de325b3-b560-464c-978e-5aa9a1250c64', 'pariatur'),
                                                                                                  ('4198ad4f-8790-4314-94dc-ba6ae034f84e', 20, 40, 'dc2b5222-347c-4919-9075-95120cd8193a', 'praesentium'),
                                                                                                  ('bbe4b655-b49d-4b68-b940-4213fd03f740', 62, 47, '8ed2cdd9-c062-43a3-804c-012eecd23cd8', 'voluptates'),
                                                                                                  ('fb0ebf9f-86a9-4982-bca8-d35f4b127820', 8, 80, '03f7f60f-c482-487e-97df-66ec00a8e927', 'quas'),
                                                                                                  ('15f6178a-0d35-4c58-b990-db9ac5f4d8c7', 40, 68, 'c43a8a32-e3d1-46f8-aa01-f95e8089f548', 'non'),
                                                                                                  ('ebf3e271-7c2f-460c-9925-9abed37ac910', 78, 34, 'cc282fd9-1a61-4301-b054-7cc8cf797533', 'aut'),
                                                                                                  ('b6d872c5-60c9-4f4f-9751-3457af4c0900', 32, 13, '55c7f5c7-17b8-46be-9d72-7b0bf3f78e48', 'consequatur'),
                                                                                                  ('138e86da-76da-45e7-9ad5-33dcddc422c6', 47, 34, '52e46fc2-c73a-4b4f-9ef8-27bffdf6c516', 'explicabo'),
                                                                                                  ('37c79775-324f-422d-b4d9-1faab4924858', 19, 13, 'a1f3629d-7534-44c1-81c7-65899811caef', 'odit'),
                                                                                                  ('b8c092a0-7c39-4ab8-8c91-0c0d7d8048b8', 9, 60, '8cbf409a-644e-4fac-8eb9-1b19718a6bfe', 'wymanburgh'),
                                                                                                  ('ef68dfe2-1bab-4b77-b365-604ede1ce320', 14, 58, '3583ebf2-fa66-4857-a465-b80c3a4b92ec', 'aliquam'),
                                                                                                  ('0db9a27d-d4f8-45f8-93c4-f5d44669f9df', 65, 42, '2796803f-fee4-40f9-9c13-135b306e5804', 'molestias'),
                                                                                                  ('d011eb3c-07ed-4497-a431-c6d7e7bf7a3b', 55, 83, '1d32feaf-28ec-473e-96d4-b29231178c6a', 'macifort'),
                                                                                                  ('9cc320d3-6f2b-459b-8ad4-866214423c95', 63, 85, 'af09b8d6-2005-4bb3-893c-9eaa05d7ad2e', 'provident'),
                                                                                                  ('039644b6-9005-4260-b73a-08bf05bf2786', 65, 80, '7ee4a46d-d472-4aef-957e-ddc69c474e4a', 'minima'),
                                                                                                  ('f45783cf-80ae-480b-a496-6cd1811abbd7', 2, 80, '355d1190-07cf-4f36-a69b-e974eefaae6d', 'ipsam'),
                                                                                                  ('ed4897ed-e34c-4598-92df-265c648fcf51', 50, 73, '6550a817-cae1-4781-9e60-50b768a3342e', 'cum'),
                                                                                                  ('52ad7023-c689-452b-9820-141ad9f9910c', 19, 50, '708d238d-b78c-442f-b6e4-9a8a372bc8ea', 'reprehenderit'),
                                                                                                  ('3d9cbcb6-0aa3-4fff-bd8e-992699fd9a15', 13, 69, 'a64802f9-a065-4685-af82-54d513081cf7', 'suscipit'),
                                                                                                  ('78a70935-d4b3-4d00-9767-96337ece4da2', 71, 23, 'c97ea664-60b8-4fb9-965b-fba00a9e9c3f', 'necessitatibus'),
                                                                                                  ('3843502f-d0da-43c7-87d2-ddb751f0b5e9', 99, 27, '330db1e9-e6ef-49dc-94b7-1634686b8eac', 'loniefurt'),
                                                                                                  ('a4d2cf29-99b5-4298-adac-94f9635444fb', 89, 78, '502655b9-221c-4e69-956e-23c0dc6c6bd9', 'quia'),
                                                                                                  ('f1781ccf-86fc-4d1e-bdc6-0df40a4d2054', 8, 1, '2c2c4d70-fc1f-40a0-82fb-90f32d92737f', 'sit'),
                                                                                                  ('6f97b98c-fb9b-4ba0-9b4c-4d16866ac026', 30, 66, '9f3938e8-06c1-456a-96eb-9a2f84ed5426', 'eastreganport'),
                                                                                                  ('5280956b-5bd0-4412-bd06-e4e4eb32fa90', 31, 28, '6be49800-f9cc-4e73-8c2e-895dfc122b59', 'omnis'),
                                                                                                  ('d2ff433a-6cfe-4a23-be87-56b10c8dd42b', 86, 76, 'd045c6ae-ecd8-4082-92b7-988ace281480', 'laudantium'),
                                                                                                  ('76b82e77-c9a1-4e01-ab24-9ae8802d5fe2', 9, 33, 'de6e6dbf-32e0-4cd9-959e-acefbb6fced5', 'architecto'),
                                                                                                  ('dbfdea2c-e380-4c3e-ac8d-33e1cc32b269', 34, 13, '006f32e7-c346-4f2e-9670-1151df0482eb', 'fugiat'),
                                                                                                  ('77ac161f-0f05-4d7e-b19d-acab8afa033c', 41, 31, '992ebaa1-8980-4c22-b83c-4f5359f7756d', 'inventore'),
                                                                                                  ('7f4d3092-9a0e-4e7c-bbb7-9ef7a3344ed7', 85, 38, 'dc109436-1120-47a1-9e48-b2b0d23e493b', 'sequi'),
                                                                                                  ('3751d6e0-3f22-4b00-85df-5c96542e007d', 65, 93, '2b23948b-eb26-4de9-94c5-d594f9a5b7b5', 'itaque'),
                                                                                                  ('f43cae61-cc1f-4f0f-91b3-b668375c7854', 50, 53, '613498f1-4dd3-4bd4-b3f7-7ce44e47e6d7', 'atque'),
                                                                                                  ('905b44a4-1f89-4475-bad1-c833f9b8c9f5', 71, 73, '07d6aefb-10eb-49ac-8f99-5a1fb0633c70', 'quibusdam'),
                                                                                                  ('cfddae42-38f0-42f6-ad70-5fec2d2f2120', 16, 21, '6e128823-04b1-48c8-bbb1-67f18baf09c8', 'natus'),
                                                                                                  ('5b4b034c-0903-4ec9-be48-26676b48d8cc', 2, 78, 'c36d148a-1dd6-48c9-98e9-196f8f8dbd82', 'recusandae'),
                                                                                                  ('72d469ab-cdf8-4ec6-8eb3-14b905d762f6', 0, 59, '154e958d-9541-47d8-9ac6-c4e1b31d3511', 'quisquam'),
                                                                                                  ('760a54bf-d9e8-49de-8ac4-28284b21570d', 68, 10, '600f595c-7585-4b04-8316-5d59a18ec205', 'gregoriastad'),
                                                                                                  ('e7429cba-a919-444a-8cd7-328e12da7fb3', 67, 5, '1abdb2ea-2e69-45cf-9c78-e1cb6ef97d73', 'amet'),
                                                                                                  ('d676db4e-1b20-4faf-971a-b4f0888a5d7f', 16, 15, 'f7d6305f-0adf-4849-a119-956c16b05f01', 'officia'),
                                                                                                  ('e09e1e30-b6d5-4489-8ec4-0e32d27ef6ae', 24, 76, '52db17ee-761f-4f7e-ab54-4272799aab4e', 'voluptatum'),
                                                                                                  ('c14f124f-b42b-4041-bcdb-6ae32b05e6ca', 100, 21, '19924903-8b1f-4dd6-8eff-2fedc258b257', 'yucaipa'),
                                                                                                  ('69ed6a8f-988b-40f3-93b1-dc101b627f8f', 59, 34, 'e4fa2d6c-9149-4936-8752-23cb67ed7d78', 'accusantium'),
                                                                                                  ('02b767c6-a31b-43ee-a909-d4e6db5d3815', 28, 86, '81472c2c-89ce-4dcd-b501-ef2541d8d88d', 'coeurd''alene'),
                                                                                                  ('0f39f466-fd42-44f8-b0e1-49cd15263760', 48, 50, 'd548a7ef-e622-4f69-a6ef-a9b8df9df193', 'dicta'),
                                                                                                  ('56b16be1-e0a4-4477-b63f-42128d55128c', 75, 26, 'b7c9cd8c-274c-4101-b8a4-98a398ebd506', 'eius'),
                                                                                                  ('ca0e8e2f-2180-441d-b373-08c35c65e8b4', 76, 2, 'cfe36e65-8f0a-4cba-91a0-5bd67023b917', 'botsfordfield'),
                                                                                                  ('4c24ccb5-95f1-4ae7-b3d0-f3accef75454', 96, 30, '67470839-cdc6-4ef1-9b22-3de3f0a79b11', 'northelisa'),
                                                                                                  ('0615f019-5a90-4c00-88a8-19947bc7d77a', 29, 17, '97742974-a724-4584-9183-97275e7fe6b6', 'dolore'),
                                                                                                  ('f652248d-5c17-40fa-bb67-8ff60320e0b9', 46, 0, '53d5baaf-0ec0-41d4-abe0-cb2af8ab830c', 'earum'),
                                                                                                  ('bb0df702-25d0-443b-8a85-7f6e01011f7c', 76, 44, '99013775-c8b3-404c-ae05-14dc5bdd7960', 'placeat'),
                                                                                                  ('88851445-858b-454a-9169-9bc611485fa7', 45, 59, 'b3e9b6c6-a230-4e37-bf5b-0c2e6cf95564', 'consectetur'),
                                                                                                  ('fd2aedb8-4433-46f4-bb6a-84b52846e71d', 8, 72, '47536bb9-91f3-4924-98fd-0ea2ae7323ba', 'quidem'),
                                                                                                  ('278fef34-2050-42df-893c-80113c25e506', 30, 45, '56ef2a63-21f7-4e47-bb49-1f74d6c3dd2c', 'adipisci'),
                                                                                                  ('e2e58c78-e38c-47b3-b892-88855d913f7d', 19, 54, '2574d1b0-20df-4dad-a782-2ddd1a2e4b9b', 'iure'),
                                                                                                  ('a9929100-da02-4bb5-9d0c-0c1bde4fe351', 18, 23, '7fc3f7e3-6dc2-48b0-a42b-d4ffbd9ac16c', 'ex'),
                                                                                                  ('3ce6114a-5d49-4c54-898e-70c17d444bca', 37, 39, '04d62df6-467b-46a0-b13b-008ccd2f0c6d', 'pariatur'),
                                                                                                  ('95cc68f3-263a-4999-aade-1924df26f969', 100, 47, '999f37c4-ce8a-4356-a4ad-40067e533c49', 'praesentium'),
                                                                                                  ('d4ebfb18-63a0-4d9e-8b1f-93f9e8556618', 17, 10, 'f50a44e8-256c-42ba-8eb0-96c78273c189', 'voluptates'),
                                                                                                  ('ec2f47c3-d86f-4a22-87a1-41b08a27539d', 50, 79, '90fd455b-e37b-4120-9171-81ed2ee5c718', 'quas'),
                                                                                                  ('12b42476-8a31-49c5-8ff7-ad5420cf99f4', 73, 43, '392901b7-c952-42fa-a364-6c082728ec06', 'non'),
                                                                                                  ('34bb278f-d892-4526-92e5-6d7ff695b012', 54, 68, '733dd64a-5df2-4a3c-8a93-f62d4cb0d7e2', 'aut'),
                                                                                                  ('888a5f67-898a-4175-9be8-9609e2e6a56e', 3, 11, 'b9557ed1-c783-44d6-bf3f-f9c2a83930d7', 'consequatur'),
                                                                                                  ('c3379c27-3a32-4fab-9e5e-c606dee5421b', 20, 37, '198b61ca-3241-4af7-8905-e77dcb0337ee', 'explicabo'),
                                                                                                  ('59d83402-31de-4183-a15f-6591a38b4ecf', 61, 13, '41b6a1dd-ffdb-4caa-a6fa-ae7bfcfe0693', 'odit'),
                                                                                                  ('b0ed3d3d-3085-4205-9ce0-9946caa95287', 2, 33, '901cc4f4-5cf0-4c30-bd0f-45238c579e86', 'wymanburgh'),
                                                                                                  ('fb9e55fc-9f0c-40a0-a49b-9a6862f25ef8', 14, 28, '44dfc5b4-1d60-476e-be1b-87d3928f8724', 'aliquam'),
                                                                                                  ('77281f81-2e5b-4c17-b432-c668989078bc', 11, 77, 'ab0941e7-3a32-4600-8614-1df06c269a7e', 'molestias'),
                                                                                                  ('fd288455-e269-4162-b22d-2b3fc0334ca5', 53, 29, 'fbe3bc22-589e-44ca-bfae-418973501a54', 'macifort'),
                                                                                                  ('40ffaf88-0a71-414c-978e-a30ee59925bc', 33, 87, '247a51af-d2a8-426c-9fde-567cdf66af70', 'provident'),
                                                                                                  ('414444b2-781d-4743-8625-38ce7623096c', 78, 100, '884d9388-4e2a-44a5-865e-05a2b99f0be3', 'minima'),
                                                                                                  ('774059c3-168f-4a9f-b250-bf932f33b9f9', 8, 48, '18d0287e-3677-46fd-85ef-b06aa7d8a9a0', 'ipsam'),
                                                                                                  ('e5d5a6d7-1ec0-4297-a456-181296ba1552', 97, 23, 'e8c3af83-6377-4e9c-bfec-a629a8dcb25b', 'cum'),
                                                                                                  ('da1fea7e-89fc-44af-be93-6842b9b7ba53', 23, 59, 'df0a1745-7a39-46e9-a392-d0980a0a4fc7', 'reprehenderit'),
                                                                                                  ('2c15ab22-fe2f-45fe-be21-a2dc0a67adaa', 17, 32, 'e982ff88-abc4-43b9-8bec-5ec250f1f763', 'suscipit'),
                                                                                                  ('4de1f21e-56f0-42a4-b635-5ba9e0422e64', 34, 86, 'e9f40e93-65b6-416a-af05-1d487219e50c', 'necessitatibus'),
                                                                                                  ('d8a67894-02ba-405d-adf4-36a00478cd96', 20, 25, '7949d476-e901-46ed-a1d8-3fc1cb6c02cd', 'loniefurt'),
                                                                                                  ('eb6a8986-9834-4a08-a2c8-c72389eb243b', 87, 59, 'adf018a5-ccf7-4f84-8978-e94cfb2febe8', 'quia'),
                                                                                                  ('9589ba07-9730-453e-9df7-a24f730a199e', 69, 19, '9eb7f821-ce22-47e1-8a91-ab4432f9b8f8', 'sit'),
                                                                                                  ('4b9ad6e3-6b15-4c0c-8774-e6c419d1bf26', 89, 51, '3e940294-404f-4db1-85b5-429f2427576c', 'eastreganport'),
                                                                                                  ('8bc8f425-e4fe-40d6-90ec-5bcd00edee1f', 51, 80, 'ac7ef868-dea2-4249-aa11-72551badc7ee', 'omnis'),
                                                                                                  ('ced75823-4bd4-49ea-a43f-fe16663a249a', 20, 61, 'b2cf99b3-5c0b-423a-a854-20150fcadd56', 'laudantium'),
                                                                                                  ('eba27ea4-fba0-4f12-8e0c-9b65ed1a2c14', 2, 2, 'e616df0e-d575-47dd-8bd2-fb8215d84128', 'architecto'),
                                                                                                  ('bd4744df-0d55-415f-85d4-b363aca8dedb', 78, 76, '4f652b91-0e70-4eff-906b-978fcb14e7d8', 'fugiat'),
                                                                                                  ('d38725fd-b5ff-430a-8336-2c1163c2267c', 97, 27, '02ff9513-bdd4-48f1-9390-8f87e2c8bfdd', 'inventore'),
                                                                                                  ('0f4fb687-3053-406c-90e7-b5dc14026a29', 75, 51, '467382ca-0906-4a50-a715-ca51c5f175a7', 'sequi'),
                                                                                                  ('ee31effc-c5c6-46d4-b08d-7370ff897849', 39, 12, '5da07424-2ca1-4ec9-8ba0-bd18f7e86ef9', 'itaque'),
                                                                                                  ('9dc3573d-4461-4e9e-a7e7-cd4e571842d5', 26, 11, 'f0b025c2-e615-4057-bcb2-577f5347eaeb', 'atque'),
                                                                                                  ('a0ecd0bf-a1b9-433b-ac85-0a9f9060452c', 24, 57, '7c73a144-9e8a-492c-a3cc-7991671a9273', 'quibusdam'),
                                                                                                  ('0ae2756a-da3c-48dd-803b-8a16df4a88ab', 17, 21, 'e566409d-f932-4444-b2da-c4f9b7d3b23f', 'natus'),
                                                                                                  ('4f596902-dfb3-4004-84a7-6ae1f78f069c', 57, 46, '16dfc610-100c-419d-b8e0-ca3bc24d3ef4', 'recusandae'),
                                                                                                  ('6319625e-43be-40ee-8953-d73358bc75f2', 6, 15, '32665fc9-d563-42fd-9b17-505716c38aba', 'quisquam'),
                                                                                                  ('86b636f6-4758-4bdd-a20a-a51760f6efb5', 47, 56, '70a38107-1282-4fa3-a688-2825a4b37c94', 'gregoriastad');


















