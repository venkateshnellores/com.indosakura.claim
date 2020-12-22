DROP TABLE IF EXISTS claim;
CREATE TABLE claim (
  id BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  employee_name varchar(50) DEFAULT NULL,
  creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  claim_amount float(22,2) DEFAULT '0.00',
  status int(1) DEFAULT 1,
  remarks varchar(100) DEFAULT NULL,
  project varchar(50) DEFAULT NULL, 
  expense_type int NOT NULL,
  perticulers varchar(50) NOT NULL,
  bill_attach int(1) DEFAULT 2,
  expense_bill longblob,
    PRIMARY KEY (id)
);








