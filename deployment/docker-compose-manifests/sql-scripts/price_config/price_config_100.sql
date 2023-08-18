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
                                                                                                  ('2b44aaee-788d-4a1c-a4d3-1e404d59d966', 11, 82, '51838db0-8bbb-4c1c-9d43-97d078a84c6b', 'quibusdam'),
                                                                                                  ('373b8fec-8422-431b-8d9f-c454b60123a4', 57, 3, '4526c3be-4bb9-40ef-b92d-16e2586fb7b7', 'cupiditate'),
                                                                                                  ('74e26866-ffda-44ea-8f2e-b034162c6476', 51, 83, '4edb971a-5d89-42b3-af72-5e3aa125f426', 'occaecati'),
                                                                                                  ('b4c3f822-09a3-4fee-8f3f-9e9000d83f0c', 31, 72, '43c86db2-857b-479d-b642-e07842d328e8', 'eum'),
                                                                                                  ('a899bbb3-b068-4e67-b6e4-ad25c6b4f1d6', 4, 80, '70297925-f923-421f-b24a-33a708d3603f', 'perspiciatis'),
                                                                                                  ('54ee9c33-32e7-4bce-9371-81472ef5db21', 49, 51, '451a212f-1c8e-4670-a6fa-efdc0227f93e', 'unde'),
                                                                                                  ('6dfed365-d22e-4e83-b807-c2736ae93138', 28, 46, '22500c01-19cc-4964-8b27-5802d3986cef', 'praesentium'),
                                                                                                  ('c49b7bae-87b0-436d-aff5-3f15438614a7', 43, 90, '21382251-fb04-4dd3-8a61-c5db075b2626', 'hic'),
                                                                                                  ('8ce31d07-d772-4afe-b505-fa5e63fe14a6', 68, 91, '36249996-0889-4e56-8114-1e3294dd193b', 'et'),
                                                                                                  ('2ffd1933-3827-48f0-b2dc-2b40245b2478', 53, 69, '9450f5d6-4814-4b62-81e9-93ca8bd98eb6', 'labore'),
                                                                                                  ('ea7d6c12-7aa4-4c3a-96d6-a3c18727ba42', 47, 15, '43919e2f-959d-4a96-a988-cb7b15e551bf', 'warnerrobins'),
                                                                                                  ('77268e24-0b4d-4f91-a897-59ce3f3c5245', 52, 33, 'b0aa5ee4-ae76-40af-af0b-887a8af941b1', 'nulla'),
                                                                                                  ('fe1f419b-4af1-4812-b73c-087050c663da', 51, 49, '1e4c76fb-9c44-4d5a-b610-63586ad95d22', 'iure'),
                                                                                                  ('b31b39f3-d513-4ff2-8e38-9e501c0be920', 34, 91, 'ae3ed5bb-896a-4788-9b5d-c8499e7e5a9f', 'southkianna'),
                                                                                                  ('5a6610eb-f4b6-453c-bd94-4da70db91580', 92, 44, 'b23c127b-6e77-4390-966e-34a176673767', 'eaque'),
                                                                                                  ('c4af6760-8065-447f-aaab-33a8d3446850', 71, 3, '47a9bce2-b588-4f24-9127-4f8d128992eb', 'vel'),
                                                                                                  ('e91b9ec0-0348-4ec7-ad28-2d8fa5a28205', 45, 40, 'd8554f7a-b86b-4169-bcdd-268421c27393', 'quisquam'),
                                                                                                  ('4990ca15-bf03-485b-ac2e-2c8c94768554', 49, 57, 'b51f2f8f-cc24-4450-8178-e7724432ebfc', 'wisozkberg'),
                                                                                                  ('edfc083d-7171-4251-97a4-06913675daf1', 47, 65, '8e11f946-d68b-4aed-884d-d5730cafbde2', 'omnis'),
                                                                                                  ('73fba5d2-010d-4690-b7c9-883dcb6fbe40', 12, 67, '8d7f1709-fb82-492e-bda9-999ec1ea8851', 'accusantium'),
                                                                                                  ('7efc091c-a286-47b1-ace8-586ca6119139', 21, 67, 'ced93ff4-a510-4dab-9d5b-19746afbc0db', 'nostrum'),
                                                                                                  ('1dc97895-04ce-4b74-9f31-42d862bcfdc6', 90, 17, '20be514a-081d-4d86-858d-4b8713f42a1d', 'itaque'),
                                                                                                  ('3084bdb9-068f-4a1f-a71d-a8567770e258', 52, 77, '535d61d1-0987-48f0-9307-1a93895d2b12', 'aperiam'),
                                                                                                  ('7747afbb-f814-4a8d-9a74-631b2aeb0f71', 7, 80, '75d7983b-1542-4efa-b4ac-0af62d3699d9', 'amet'),
                                                                                                  ('28dcb81b-b0e6-4cd7-afea-51dc7fa2d829', 88, 11, 'f0f9c9da-3309-489f-91f1-b5896b940c2b', 'quo'),
                                                                                                  ('ab5ac3a9-249d-4daf-b30e-3fb195ea3c09', 62, 48, 'd8ce26b9-2705-49af-b371-7049409eadb4', 'quaerat'),
                                                                                                  ('c6ebe488-bc10-4b97-a121-cda1936d3cdc', 55, 45, 'bbdec238-e1d4-413e-a921-d38b6c9c89e5', 'adipisci'),
                                                                                                  ('d72e3e45-919c-4d0a-b91e-0d13bedb47a8', 86, 79, '5fd85c95-bf9f-4254-a542-fcb09bd7a39b', 'distinctio'),
                                                                                                  ('776ca8fa-224a-4f37-a1a4-a87437d2226c', 88, 50, '8b700aaf-3e69-4794-ae2c-262ce599aa8f', 'soluta'),
                                                                                                  ('b7cc1431-a41c-4d42-91a6-d16dede57de3', 19, 51, 'bea779e0-ee1f-4f38-b9fc-30a0d27282e5', 'tenetur'),
                                                                                                  ('2c6b572f-3270-49fc-a90f-c7bde2327fb3', 30, 79, 'e349d938-cc88-4bc9-8e0a-04f95301fcb2', 'a'),
                                                                                                  ('6b10fa63-6592-481c-a253-63b038c7d1e0', 61, 75, 'bd7fe896-1c25-47a5-8eb5-8d369b55f380', 'voluptate'),
                                                                                                  ('7a2cd3ba-c626-47d3-8736-230bcf98a08f', 82, 16, 'a58e810a-9d63-4b40-8a37-a14eb40c6ab0', 'fuga'),
                                                                                                  ('52716314-3132-40f6-ba28-93c4c6ce7307', 59, 17, '252c82b8-11ea-4aa3-83a0-e5cc16d943b0', 'illo'),
                                                                                                  ('2e53c8de-5a0d-456c-9392-9caa22bc5e40', 75, 29, '2460c8d3-88ec-4672-a098-cda57c84e792', 'fortwayne'),
                                                                                                  ('b86c54ca-4288-4cab-a616-1f28840e0a70', 82, 67, 'ceb8981e-80e6-476b-89dc-68f24175b887', 'officia'),
                                                                                                  ('6e593505-c9bc-44ab-a25d-f0f3adcadd49', 89, 10, '4c301d52-7b1c-463a-8009-f00a6113573e', 'repellat'),
                                                                                                  ('fa52b00f-8cd5-4d0a-84cd-26b3ee250a39', 55, 21, '293e660c-f36b-4c8b-906e-8194de2a6213', 'asperiores'),
                                                                                                  ('cbdd3bc2-99a6-430a-98ef-5c32cbf5cff6', 12, 88, 'e1ac9f28-8276-416f-a041-945f3f48740f', 'quas'),
                                                                                                  ('d242724b-d3dc-44bd-bc3a-d0dedfa52df5', 47, 39, '7395cfea-54fd-4f1c-b1de-e9c06da2a6c3', 'doloremque'),
                                                                                                  ('797b3d80-e1e1-4b31-8e1e-3c4a6ab0e9b7', 72, 26, '921c378e-477e-496f-92a6-87e898e4ce9a', 'pariatur'),
                                                                                                  ('e8ce0d1b-f205-4aae-b245-f1b03f10080a', 81, 45, '02eb053b-9039-4b74-b0cf-59da669408bd', 'ratione'),
                                                                                                  ('4eb1913b-5b07-4569-9547-8cbef4b88c7f', 9, 60, '16354aaf-45b2-4d48-bbe7-04536ff5e0ab', 'quod'),
                                                                                                  ('11167b7a-8740-47f8-9df7-5dfa85d77d11', 23, 98, '5df4df06-61c2-4fda-9aea-af1ee0cd8481', 'sunt'),
                                                                                                  ('4b0b40f7-16f8-4833-8f36-c8ae35878d8b', 9, 67, '92f7e175-fa4d-4fe5-ae68-90d5d532845d', 'in'),
                                                                                                  ('5d524dad-19c9-4544-81b3-18c0c6940c26', 12, 33, '153b6037-7f3f-442e-b44c-52398d529ac9', 'delectus'),
                                                                                                  ('71a36749-326a-4943-82a6-099d176a6784', 79, 30, 'ed8fa787-1471-499d-a5fd-0d90e15f8a79', 'ipsum'),
                                                                                                  ('33b68a9e-77fb-446d-a3d0-2d05ffc7cc25', 2, 8, 'e5a6f3ea-b724-4031-b577-3cf6ec38912f', 'iste'),
                                                                                                  ('255a47ea-d38e-4dd9-92da-9a95cc041f45', 14, 49, 'd17d0325-28d2-4ab0-841a-69bfc6435a0e', 'porro'),
                                                                                                  ('ccfc0ba8-4a72-4038-8e2b-01837d65edff', 21, 37, 'd6feaf4d-c461-460c-9327-cf56f89daec0', 'ea'),
                                                                                                  ('3e93ce2e-5ee4-4bc5-9bf3-42b93430a529', 61, 71, 'c5355a39-3cf1-4f47-95b1-d4ece51d7e9e', 'quibusdam'),
                                                                                                  ('806f7750-e1c3-4723-96f9-d52680945114', 58, 62, 'e2ea7ce8-788d-4d90-9ac2-8b1b4c40ac7a', 'cupiditate'),
                                                                                                  ('276fa5af-31de-4069-9fda-9e4141185498', 63, 63, 'b50e8815-2ad3-4d91-9796-5905cb229336', 'occaecati'),
                                                                                                  ('24857302-243f-4eb1-add3-196f157b68bd', 74, 87, '04056f5f-9909-4474-a9b9-a2775e63e05d', 'eum'),
                                                                                                  ('ca9a90ab-417c-4013-ac6e-49d0e6c6dfb9', 36, 34, 'c576b90f-20a7-4296-8a63-6a9b511f768c', 'perspiciatis'),
                                                                                                  ('3b265756-7313-4d74-9427-d03ce91e014e', 96, 25, '778e8952-39c0-4ea7-8516-0c0caa1184f8', 'unde'),
                                                                                                  ('6893e9ce-4759-4d68-a2ed-234e9d4e87a5', 22, 44, '46f74fdc-20cc-430d-9fdf-ecbf010e18c7', 'praesentium'),
                                                                                                  ('7d2e77e0-bb67-434b-9563-13d7e9674f29', 72, 4, 'df566b3a-a19b-4f3e-83a0-ec851fd2bce0', 'hic'),
                                                                                                  ('4d00719c-de2e-4cbb-a396-1b6e948ec50c', 85, 98, '033b3fff-c98f-441b-bbdc-0f02da44a89e', 'et'),
                                                                                                  ('ad5312e9-20b5-4000-ac9a-2d077585a845', 54, 73, '60b61123-9b27-45d7-afdc-121fbdf1486c', 'labore'),
                                                                                                  ('828ac228-6af8-4660-a642-06445e3d3300', 6, 27, '1e55cee2-03a0-4c51-b66e-c6ab934a7e3d', 'warnerrobins'),
                                                                                                  ('76bcc476-3bcd-4d28-876c-53bf33fed10a', 45, 40, '52f5b710-70fe-4c23-98df-663dba02f852', 'nulla'),
                                                                                                  ('0dbf571a-abd3-4ab8-9559-c705b2441901', 97, 59, 'af358c5c-eb10-455f-a139-99129e698b24', 'iure'),
                                                                                                  ('e7dcc5a7-f805-4607-8aae-5b292aaafaef', 56, 49, 'd22ccf06-f669-48e5-83f9-893ee03cc48f', 'southkianna'),
                                                                                                  ('a21d80ca-0951-44e1-a36c-4aa45c429e32', 94, 18, '86312593-47e4-4cb3-bff1-0eea4ccd5d84', 'eaque'),
                                                                                                  ('47bb9bb4-24bd-4f38-bbfa-928fc57aa723', 3, 0, 'f62aafd9-f58d-4329-9db3-e9b52837aec6', 'vel'),
                                                                                                  ('6d278847-3b5b-4af5-9a83-f5d73eba41c7', 7, 18, '38c8773f-3c36-44a6-b8ec-1aa1849f43e5', 'quisquam'),
                                                                                                  ('99cf526d-f70d-476f-bee0-32ffecc17a47', 10, 98, 'f3a1f52c-ccd9-4210-9414-090d0a86c02f', 'wisozkberg'),
                                                                                                  ('e2d208ca-1f09-4f82-9c21-264917e9b343', 99, 42, 'dff035cd-6d7b-4cc4-84f8-a13be03f1c63', 'omnis'),
                                                                                                  ('b44417da-9518-403c-ae0a-a7dd9defdcf3', 55, 42, '64624723-6338-4c47-9cf7-e1caab6c4eb9', 'accusantium'),
                                                                                                  ('786d3de7-8045-4e57-9388-f83b0426af15', 91, 58, 'a6cd4fa1-99e8-43c4-ae95-611a5d245424', 'nostrum'),
                                                                                                  ('2f363887-ee02-48ce-8f28-b36577dc4490', 94, 75, 'abbebb8d-197a-41ad-a055-5b973dcaed71', 'itaque'),
                                                                                                  ('20af2b7f-51bb-4b5c-823c-06263f40d373', 2, 60, 'a129cec8-b7fa-43c3-aec9-b323b59ec1e0', 'aperiam'),
                                                                                                  ('d86ce3ca-ee3f-4af9-b515-acca452923b9', 34, 18, 'd8120d04-f95e-4ae1-afda-8d7d3182ade5', 'amet'),
                                                                                                  ('d37ccd8a-1869-434e-afe4-e7461d173832', 57, 8, '7996fa6b-8e77-477a-aa52-8eb7f0dbb192', 'quo'),
                                                                                                  ('37b8709e-9311-43ef-8b4b-20282bd97d16', 13, 53, 'bdfecd87-3e0d-4db7-be68-108395308de8', 'quaerat'),
                                                                                                  ('d72bcf07-4589-4761-83cc-b466bb4c6923', 43, 24, 'd941e379-672c-4efa-9d46-52cad6fda09c', 'adipisci'),
                                                                                                  ('4a31fc4c-dfc2-4382-90f9-b20c6e3364e7', 83, 47, '170fdd02-7038-40ea-b85a-dfe2e8ea9826', 'distinctio'),
                                                                                                  ('7e044c75-bdc8-47a0-ae8f-2e0a3f47fbb0', 19, 63, '8b3e706c-fecd-4850-bb4f-a218a4c7edd0', 'soluta'),
                                                                                                  ('4fdc39bf-6e7a-4dcf-b49c-f4707f12000a', 35, 48, '72e2d463-c516-4124-a637-88dccf516973', 'tenetur'),
                                                                                                  ('36f48cac-261d-47e5-a684-2cf017897aab', 63, 22, 'e2eaa6d1-be92-4795-a65b-9ce6daab5423', 'a'),
                                                                                                  ('01a544d9-d5ef-4896-8148-ddd21aa805c5', 71, 40, '85229cfe-635a-436e-ae65-f505136aa951', 'voluptate'),
                                                                                                  ('7e0c1798-3a55-4c28-80d0-f5cf7ca55158', 66, 0, '673d7f85-8f9b-4e2c-9cbb-17950f1190ca', 'fuga'),
                                                                                                  ('2b4d4017-d079-41a8-a044-d6f5f5938e03', 66, 68, '1d119e7f-c682-4e07-ae2c-4ba4123fdb33', 'illo'),
                                                                                                  ('ef84b2b6-a6cb-4826-a306-9c049733a461', 86, 50, 'd2c5b746-4f89-4d8c-976e-9cad88b7206e', 'fortwayne'),
                                                                                                  ('b60b7fba-a0ea-4c9b-b86d-3ec92aa2ab60', 39, 55, '1d8344b6-7c66-4ab8-b396-45ee26c44424', 'officia'),
                                                                                                  ('f3d36f4f-216d-4c4a-963b-a900678d7f29', 79, 41, 'e49b41b7-b535-47cd-a262-f838f0ce87ac', 'repellat'),
                                                                                                  ('9d616036-7ba2-4895-8f70-60e5585ae843', 57, 47, 'e8e03919-549d-44f6-ab41-1af5ce5fd26a', 'asperiores'),
                                                                                                  ('cc20940c-cece-4702-80ce-d554752372ac', 82, 69, '770854b6-6e8a-48e6-a34a-b6c4fd9addc9', 'quas'),
                                                                                                  ('508f270d-9ff7-41f5-b38d-493a60170910', 17, 90, '021eca16-1ebb-4094-aa60-2c4331dc048d', 'doloremque'),
                                                                                                  ('e1f44e72-97bc-49c6-a8ca-1c62b350321f', 83, 40, 'f7b2f6b3-4f41-43bd-8bd0-0e3845da3dc9', 'pariatur'),
                                                                                                  ('e1c4ff2e-c0b3-4887-a72d-d02abf253630', 10, 95, '6c0928d9-38df-48e0-8de1-90a210162a65', 'ratione'),
                                                                                                  ('fa076739-e1ee-4165-acb9-1ef56665c7c0', 85, 40, '3b275ff9-3126-4124-8026-14344f057bb5', 'quod'),
                                                                                                  ('7d3f0dd2-90ea-47fa-a287-663d33d71191', 47, 15, '6e1a8c16-0a84-4fb7-8f08-4de3f65fe166', 'sunt'),
                                                                                                  ('8eb88d15-f2c5-4698-b0a2-63d174cd8bc5', 38, 18, 'f60e82de-7547-4ce9-99ad-8d69c7df9636', 'in'),
                                                                                                  ('6be5e8a9-3ace-4df1-8f19-08e5790e5824', 60, 1, '7b39b5ff-54d5-4390-bd88-cd65bc78b95e', 'delectus'),
                                                                                                  ('60e33ff2-9f9c-4ad6-829c-711b85c7243f', 31, 16, '3bdde0cc-a4eb-4e04-8df0-21068339bf7a', 'ipsum'),
                                                                                                  ('4219fa6d-8023-4bda-a76f-f865e2cfa718', 99, 27, '04611c67-883f-4592-986b-805ffeaf5a6b', 'iste'),
                                                                                                  ('a02d6012-246b-4350-9414-cc863521d9f8', 43, 9, 'cb40dd82-6053-4ec5-899a-94ad6aa6a976', 'porro'),
                                                                                                  ('6bd036f8-0e1f-4756-a943-e0f60b8ad8ac', 22, 18, 'e785832f-82f4-4f42-ac71-a6d63a2667b4', 'ea');





























