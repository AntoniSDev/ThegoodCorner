var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
import { BaseEntity, Column, Entity, JoinTable, ManyToMany, ManyToOne, PrimaryGeneratedColumn, } from "typeorm";
import { Category } from "./category";
import { Tag } from "./tag";
import { Length } from "class-validator";
let Ad = class Ad extends BaseEntity {
};
__decorate([
    PrimaryGeneratedColumn(),
    __metadata("design:type", Number)
], Ad.prototype, "id", void 0);
__decorate([
    Column(),
    Length(1, 100),
    __metadata("design:type", String)
], Ad.prototype, "title", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Ad.prototype, "description", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Ad.prototype, "owner", void 0);
__decorate([
    Column(),
    __metadata("design:type", Number)
], Ad.prototype, "price", void 0);
__decorate([
    Column(),
    __metadata("design:type", String)
], Ad.prototype, "ville", void 0);
__decorate([
    Column({
        default: "https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg",
    }),
    __metadata("design:type", String)
], Ad.prototype, "imgUrl", void 0);
__decorate([
    ManyToOne(() => Category, (category) => category.ads),
    __metadata("design:type", Category)
], Ad.prototype, "category", void 0);
__decorate([
    ManyToMany(() => Tag),
    JoinTable(),
    __metadata("design:type", Array)
], Ad.prototype, "tags", void 0);
Ad = __decorate([
    Entity()
], Ad);
export { Ad };
//# sourceMappingURL=ad.js.map