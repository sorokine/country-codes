--
-- Creates an empty table in PostgreSQL for country code
--

DROP TABLE IF EXISTS country_codes;
CREATE TABLE country_codes (
  country_name TEXT,
  official_name_en TEXT,
  official_name_fr TEXT,
  ISO3166_1_Alpha_2 CHAR(2),
  ISO3166_1_Alpha_3 CHAR(3),
  ISO3166_1_numeric CHAR(3) PRIMARY KEY,
  ITU CHAR(3),
  MARC TEXT,
  WMO CHAR(2),
  DS CHAR(3),
  Dial TEXT,
  FIFA TEXT,
  FIPS TEXT,
  GAUL TEXT,
  IOC CHAR(3),
  ISO4217_currency_alphabetic_code CHAR(3),
  ISO4217_currency_country_name TEXT,
  ISO4217_currency_minor_unit INT,
  ISO4217_currency_name TEXT,
  ISO4217_currency_numeric_code CHAR(3),
  is_independent TEXT,
  Capital TEXT,
  Continent CHAR(2),
  TLD CHAR(3),
  Languages TEXT,
  geonameid INT,
  EDGAR CHAR(2)
);

\copy country_codes FROM 'data/country-codes.csv' CSV HEADER
