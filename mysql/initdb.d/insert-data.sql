USE java-db;

-- SET CHARACTER_SET_CLIENT = utf8mb4;
-- SET CHARACTER_SET_CONNECTION = utf8mb4;

-- 商品カテゴリ
insert into item_categories values (1, '食品', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_categories values (2, '雑貨', 2, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_categories values (3, 'コスメ', 3, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_categories values (4, 'ガーデニング', 4, 'CHI-3', now(), 'CHI-3', now(), 0);


-- 商品タグ
insert into item_tags values (1, '今売れてます！', 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_tags values (2, '担当者イチオシ', 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_tags values (3, '訳あり品', 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_tags values (4, 'オリジナルブランド', 'CHI-3', now(), 'CHI-3', now(), 1);
insert into item_tags values (5, '当店オリジナル', 'CHI-3', now(), 'CHI-3', now(), 0);

-- 商品
insert into items values (1, 'さくさクッキー', 500, '当店自慢！サクッと軽い食感のクッキーです', 'item_000001.jpg', 1, 1, '{"itemTags": [1, 2]}', '2020/09/15', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (2, 'とろとろプリン', 250, 'シェフ秘伝のレシピで作り上げたお口の中でとろける、病みつき間違いなしの逸品です', 'item_000002.jpg', 2, 1, '{"itemTags": [1, 2]}', '2020/05/01', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (3, 'こわれガレット', 200, 'われてしまっているためおトクな価格で販売！お味は正規品と変わりません！', 'item_000003.jpg', 4, 1, '{"itemTags": [3]}', '2020/05/01', '9999/12/31', 0, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (4, '超濃厚チーズケーキ', 1500, '超濃厚チーズ味！チーズ好きならだれもがうなる病みつき間違いなしのチーズケーキです！', 'item_000004.jpg', NULL, 1, '{"itemTags": [2, 5]}', '2019/04/01', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (5, 'おばあちゃんちのみたらし団子', 250, 'まるでおばあちゃんの家に遊びにいったかのような、どこか懐かしい味のするみたらし団子です', 'item_000005.jpg', 3, 1, '{"itemTags": [1, 2]}', '2019/04/01', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (6, 'パティシエのシュークリーム', 350, '当店専属のパティシエが考案！今までにない驚きのおいしさのシュークリームです！', 'item_000006.jpg', NULL, 1, '{"itemTags": [1, 2, 4]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (7, 'アンティークグローブ', 2500, 'おしゃれなアンティークグローブ（地球儀）です', 'item_000007.jpg', 5, 2, '{"itemTags": [1, 2]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (8, 'ハーバリウム小', 780, 'お部屋をワンモアオシャレに！', 'item_000008.jpg', 1, 2, '{"itemTags": [2]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (9, 'ハーバリウム中', 1200, 'お部屋をワンモアオシャレに！', 'item_000009.jpg', 2, 2, '{"itemTags": [2]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (10, 'ハーバリウム大', 1980, 'お部屋をワンモアオシャレに！', 'item_000010.jpg', 3, 2, '{"itemTags": [2]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (11, 'コンパクトゴミ箱', 520, 'コンパクトなのにたっぷり入るゴミ箱です', 'item_000011.jpg', 4, 2, '{"itemTags": [1, 2]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 1);
insert into items values (12, 'しっとリップ（ローズ）', 690, 'あなたのリップをしっかり保湿！ローズカラーのこじゃれたリップです！', 'item_000012.jpg', 4, 3, '{"itemTags": [1, 5]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (13, 'しっとリップ（チェリー）', 690, 'あなたのリップをしっかり保湿！チェリーカラーのこじゃれたリップです！', 'item_000013.jpg', 6, 3, '{"itemTags": [1, 5]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (14, 'しっとリップ（ベリー）', 690, 'あなたのリップをしっかり保湿！ベリーカラーのこじゃれたリップです！', 'item_000014.jpg', 5, 3, '{"itemTags": [1, 5]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (15, 'ドリームパフュームA', 1380, 'ドリームパフュームA', 'item_000015.jpg', 2, 3, '{"itemTags": [1, 2]}', '2020/09/15', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (16, 'ドリームパフュームB', 1380, 'ドリームパフュームB', 'item_000016.jpg', 1, 3, '{"itemTags": [1, 2]}', '2020/09/15', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (17, 'ダミー1', 1780, 'ダミーデータです', 'item_000017.jpg', NULL, 3, '{"itemTags": [1,3]}', '2020/09/15', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (18, '【訳あり】お休みハンドクリーム', 350, '就寝前にリラックス！※箱に凹みがあるため、特別価格でご提供！品質は通常品と変わりないので、とってもおトク！', 'item_000018.jpg', 3, 3, '{"itemTags": [1,2,3]}', NULL, '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into items values (19, 'ダミー2', 2340, 'ダミーデータです', 'item_000019.jpg', NULL, 3, '{"itemTags": [1, 5]}', '2019/04/01', '2020/08/31', 1, 'CHI-3', now(), 'CHI-3', now(), 1);
insert into items values (20, 'ダミー3', 3380, 'ダミーデータです', 'item_000020.jpg', NULL, 3, '{"itemTags": [1,3]}', '2020/09/15', '9999/12/31', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
