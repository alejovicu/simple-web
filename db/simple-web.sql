USE simple-web;

CREATE TABLE product (
    prodid          INT             UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    reference       VARCHAR(60)     NOT NULL,
    price           DECIMAL(13, 2)  NOT NULL,
    state           VARCHAR(10)     NOT NULL
);

ALTER TABLE product ADD UNIQUE INDEX udx_product_reference (reference);

CREATE TABLE product_tag (
    prodid          INT             UNSIGNED NOT NULL,
    tag             VARCHAR(60)     NOT NULL
);


ALTER TABLE product_tag ADD FOREIGN KEY (prodid) REFERENCES product(prodid);
ALTER TABLE product_tag ADD UNIQUE INDEX udx_product_tag (prodid, tag);

CREATE TABLE product_data (
    proddataid      INT             UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    prodid          INT             UNSIGNED NOT NULL,
    lang            VARCHAR(2)      NOT NULL,
    title           VARCHAR(200)    NOT NULL,
    desc_short      VARCHAR(30)     NOT NULL,
    desc_extended   VARCHAR(3000),
    img_small_url   VARCHAR(3000),
    img_big_url     VARCHAR(3000)
);

ALTER TABLE product_data ADD FOREIGN KEY (prodid) REFERENCES product(prodid);

CREATE TABLE order_data (
    orderid         INT         UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    creation_date   TIMESTAMP   NOT NULL
);

CREATE TABLE order_state (
    orderstateid    INT         UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    orderid         INT         UNSIGNED NOT NULL,
    state           VARCHAR(10) NOT NULL,
    state_date      TIMESTAMP   NOT NULL
);

ALTER TABLE order_state ADD FOREIGN KEY (orderid) REFERENCES order_data(orderid);

CREATE TABLE order_product (
    orderprodid     INT    UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    orderid         INT    UNSIGNED NOT NULL,
    prodid          INT    UNSIGNED NOT NULL,
    reference       VARCHAR(60)     NOT NULL,
    title           VARCHAR(200)    NOT NULL,
    price           DECIMAL(13, 2)  NOT NULL,
    quantity        INT             NOT NULL
);

ALTER TABLE order_product ADD FOREIGN KEY (orderid) REFERENCES order_data(orderid);
ALTER TABLE order_product ADD FOREIGN KEY (prodid) REFERENCES product(prodid);