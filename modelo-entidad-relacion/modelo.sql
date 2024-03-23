/* Modelo generado automaticamente desde el database markdown */

CREATE SCHEMA "nodriza";

CREATE SCHEMA "soldado";

CREATE TYPE "nodriza"."total_reserve_status" AS ENUM (
  'out_of_stock',
  'in_stock',
  'running_low'
);

CREATE TYPE "soldado"."status" AS ENUM (
  'full_health',
  'medium_health',
  'low_health',
  'critical_health'
);

CREATE TABLE "hormiguero" (
  "id" int PRIMARY KEY
);

CREATE TABLE "reina" (
  "id" int PRIMARY KEY,
  "egg_daily_quantity" int
);

CREATE TABLE "princesa" (
  "id" int PRIMARY KEY
);

CREATE TABLE "principe" (
  "id" int PRIMARY KEY
);

CREATE TABLE "nodriza" (
  "id" int PRIMARY KEY,
  "obrera_food_reserve" int,
  "soldado_food_reserve" int,
  "nodriza_food_reserve" int,
  "principe_food_reserve" int,
  "sepulturera_food_reserve" int,
  "total_reserve_status" nodriza.total_reserve_status
);

CREATE TABLE "obrera" (
  "id" int PRIMARY KEY
);

CREATE TABLE "soldado" (
  "id" int PRIMARY KEY,
  "health" int,
  "attack_damage" int,
  "status" soldado.status
);

CREATE TABLE "sepulturera" (
  "id" int PRIMARY KEY
);

ALTER TABLE "reina" ADD FOREIGN KEY ("id") REFERENCES "hormiguero" ("id");

ALTER TABLE "princesa" ADD FOREIGN KEY ("id") REFERENCES "hormiguero" ("id");

ALTER TABLE "principe" ADD FOREIGN KEY ("id") REFERENCES "hormiguero" ("id");

ALTER TABLE "nodriza" ADD FOREIGN KEY ("id") REFERENCES "hormiguero" ("id");

ALTER TABLE "obrera" ADD FOREIGN KEY ("id") REFERENCES "hormiguero" ("id");

ALTER TABLE "soldado" ADD FOREIGN KEY ("id") REFERENCES "hormiguero" ("id");

ALTER TABLE "sepulturera" ADD FOREIGN KEY ("id") REFERENCES "hormiguero" ("id");
