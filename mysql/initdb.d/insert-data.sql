USE java-db;

SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

-- 商品カテゴリ
insert into item_categories values (1,'食品', 1, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_categories values (2,'雑貨', 2, 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_categories values (3,'コスメ', 3, 'CHI-3', now(), 'CHI-3', now(), 0);

-- 商品タグ
insert into item_tags values (1,'今売れてます！', 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_tags values (2,'担当者イチオシ', 'CHI-3', now(), 'CHI-3', now(), 0);
insert into item_tags values (3,'訳あり品', 'CHI-3', now(), 'CHI-3', now(), 0);

-- 商品
insert into items values (1,'さくさクッキー', '当店自慢！サクッと軽い食感のクッキーです', 'item_000001.jpg', 1, 1,'{"itemTags":[1,2]}', '2020/09/15', '2020/12/31', 1, 'CHI-3', now(),'CHI-3', now(), 0);
insert into items values (2,'とろとろプリン', 'シェフ秘伝のレシピで作り上げたお口の中でとろける、病みつき間違いなしの逸品です', 'item_000002.jpg', 2, 1,'{"itemTags":[1,2]}', '2020/05/01', '2020/12/31', 1, 'CHI-3', now(),'CHI-3', now(), 0);
insert into items values (3,'われガレット', 'われてしまっているためおトクな価格で販売！お味は正規品と変わりません！', 'item_000003.jpg', 3, 1,'{"itemTags":[3]}', '2020/05/01', '2020/08/31', 0, 'CHI-3', now(),'CHI-3', now(), 0);
