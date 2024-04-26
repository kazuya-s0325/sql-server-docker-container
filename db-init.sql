CREATE DATABASE prototype;

GO
  USE prototype;

GO
  DROP TABLE IF EXISTS M_PRODUCT_SS;

GO
  CREATE TABLE M_PRODUCT_SS(
    品番 CHAR (8),
    商品名 NVARCHAR (255),
    箱番 NVARCHAR (255),
    PRIMARY KEY (品番)
  );

GO
  BULK
INSERT
  M_PRODUCT_SS
FROM
  '/usr/src/docker/seed/xxx.csv' WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    ROWTERMINATOR = '\r\n'
  );

GO
