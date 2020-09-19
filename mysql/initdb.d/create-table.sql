USE java-db;

-- 商品カテゴリ
create table item_categories (
  category_id INT not null AUTO_INCREMENT comment 'カテゴリID'
  , category_name VARCHAR(1024) comment '口コミ'
  , ranking SMALLINT comment '優先順位'
  , created_by VARCHAR(100) comment '新規作成者'
  , created_at DATETIME comment '新規作成日'
  , updated_by VARCHAR(100) comment '最終更新者'
  , updated_at DATETIME comment '最終更新日'
  , is_deleted TINYINT comment '削除フラグ'
  , constraint item_categories_PKC primary key (category_id)
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 comment '商品カテゴリ';

-- 商品タグ
create table item_tags (
  tag_id INT not null AUTO_INCREMENT comment 'タグID'
  , tag_name VARCHAR(100) comment 'タグ名'
  , created_by VARCHAR(100) comment '新規作成者'
  , created_at DATETIME comment '新規作成日'
  , updated_by VARCHAR(100) comment '最終更新者'
  , updated_at DATETIME comment '最終更新日'
  , is_deleted TINYINT comment '削除フラグ'
  , constraint item_tags_PKC primary key (tag_id)
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 comment '商品タグ';


-- 商品
create table items (
  item_id INT not null AUTO_INCREMENT comment '商品ID'
  , item_name VARCHAR(100) comment '商品名'
  , item_explanation VARCHAR(500) comment '商品説明'
  , item_image VARCHAR(1024) comment '商品写真'
  , ranking INT comment '優先順位'
  , category_id INT not null comment 'カテゴリID'
  , item_tag JSON comment '商品タグ'
  , start_on DATE comment '販売開始日'
  , end_on DATE comment '販売終了日'
  , is_open TINYINT comment '公開フラグ'
  , created_by VARCHAR(100) comment '新規作成者'
  , created_at DATETIME default now() comment '新規作成日'
  , updated_by VARCHAR(100) comment '最終更新者'
  , updated_at DATETIME  default now() comment '最終更新日'
  , is_deleted TINYINT not null default false comment '削除フラグ'
  , constraint items_PKC primary key (item_id)
  , foreign key items_FK (category_id) references item_categories(category_id)
  , index items_IDX (category_id)
  , index items_IDX2 (is_open)
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 comment '商品';

-- 商品ビュー
create view category_item_view as
select
  ic.category_id
  , ic.category_name
  , it.item_list
  , it.item_count
  , ic.ranking
from
  item_categories ic
  left outer join (
    select
      category_id
      , concat('[', trim(trailing ',' from group_concat('{"itemId":"', i.item_id, '","itemName":"', i.item_name, '","itemImage":"',i.item_image, '","ranking":"',i.ranking,'"}')),']') item_list
      , count(item_id) item_count
    from
      items i
    where
      now() between start_on and end_on
      and is_deleted = 0
    group by
      category_id
  ) it
    on ic.category_id = it.category_id
	and ic.is_deleted = 0;
