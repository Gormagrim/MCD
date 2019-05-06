#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: fsav4_customers
#------------------------------------------------------------

CREATE TABLE fsav4_customers(
        id        Int  Auto_increment  NOT NULL ,
        lastname  Varchar (50) NOT NULL ,
        firstname Varchar (50) NOT NULL ,
        birthday  Date NOT NULL ,
        mail      Varchar (600) NOT NULL ,
        budget    DECIMAL (15,3)  NOT NULL
	,CONSTRAINT fsav4_customers_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fsav4_typeOfProperty
#------------------------------------------------------------

CREATE TABLE fsav4_typeOfProperty(
        id   Int  Auto_increment  NOT NULL ,
        type Varchar (12) NOT NULL
	,CONSTRAINT fsav4_typeOfProperty_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fsav4_properties
#------------------------------------------------------------

CREATE TABLE fsav4_properties(
        id                      Int  Auto_increment  NOT NULL ,
        name                    Varchar (50) NOT NULL ,
        zipCode                 Varchar (5) NOT NULL ,
        price                   DECIMAL (15,3)  NOT NULL ,
        id_typeOfProperty Int NOT NULL
	,CONSTRAINT fsav4_properties_PK PRIMARY KEY (id)

	,CONSTRAINT fsav4_properties_fsav4_typeOfProperty_FK FOREIGN KEY (id_typeOfProperty) REFERENCES fsav4_typeOfProperty(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fsav4_appointments
#------------------------------------------------------------

CREATE TABLE fsav4_appointments(
        id                  Int  Auto_increment  NOT NULL ,
        date                Date NOT NULL ,
        timeSlot            Varchar (50) NOT NULL ,
        id_customers  Int NOT NULL ,
        id_properties Int NOT NULL
	,CONSTRAINT fsav4_appointments_PK PRIMARY KEY (id)

	,CONSTRAINT fsav4_appointments_fsav4_customers_FK FOREIGN KEY (id_customers) REFERENCES fsav4_customers(id)
	,CONSTRAINT fsav4_appointments_fsav4_properties0_FK FOREIGN KEY (id_properties) REFERENCES fsav4_properties(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fsav4_supplyDemand
#------------------------------------------------------------

CREATE TABLE fsav4_supplyDemand(
        id_properties                 Int NOT NULL ,
        id_customers Int NOT NULL
	,CONSTRAINT fsav4_supplyDemand_PK PRIMARY KEY (id_properties,id_customers)

	,CONSTRAINT fsav4_supplyDemand_fsav4_properties_FK FOREIGN KEY (id_properties) REFERENCES fsav4_properties(id)
	,CONSTRAINT fsav4_supplyDemand_fsav4_customers0_FK FOREIGN KEY (id_customers) REFERENCES fsav4_customers(id)
)ENGINE=InnoDB;
