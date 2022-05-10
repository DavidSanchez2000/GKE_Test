CREATE TABLE cards
(
    id              INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    cvv             VARCHAR(8),
    expiration_date date        NOT NULL,
    bank_account_id INTEGER     NOT NULL,
    name_on_card    VARCHAR(20) NOT NULL,
    card_number     VARCHAR(20) NOT NULL,
    CONSTRAINT pk_cards PRIMARY KEY (id)
);

ALTER TABLE cards
    ADD CONSTRAINT FK_CARDS_ON_BANK_ACCOUNT FOREIGN KEY (bank_account_id) REFERENCES bank_accounts (id);