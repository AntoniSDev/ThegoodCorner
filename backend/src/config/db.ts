import { DataSource } from "typeorm";
import { Ad } from "../entities/ad";
import { Category } from "../entities/category";
import { Tag } from "../entities/tag";

export const dataSource = new DataSource({
  type: "sqlite",
  database: "db.sqlite",
  synchronize: true,
  logging: ["error", "query"],
  entities: [Ad, Category, Tag],
});
