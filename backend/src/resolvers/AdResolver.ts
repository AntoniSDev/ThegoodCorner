import { Category } from "../entities/category";
import { Ad } from "../entities/ad";
import {
  Arg,
  Field,
  ID,
  InputType,
  Mutation,
  Query,
  Resolver,
} from "type-graphql";

@InputType()
class NewAdInput implements Partial<Ad> {
  @Field(() => ID, { nullable: true })
  categoryId: number;

  @Field()
  title: string;

  @Field()
  description: string;

  @Field()
  owner: string;

  @Field()
  price: number;

  @Field()
  ville: string;

  @Field()
  imgUrl: string;

  @Field(() => ID, { nullable: true })
  category: Category;
}

@InputType()
class UpdateAdInput {
  @Field({ nullable: true })
  title: string;

  @Field({ nullable: true })
  description: string;

  @Field({ nullable: true })
  owner: string;

  @Field({ nullable: true })
  price: number;

  @Field({ nullable: true })
  ville: string;

  @Field({ nullable: true })
  imgUrl: string;

  @Field(() => ID, { nullable: true })
  categoryId: number;
}

@Resolver(Ad)
class AdResolver {
  @Query(() => [Ad])
  async getAllAds() {
    const ads = await Ad.find({ relations: { category: true } });
    return ads;
  }

  @Query(() => Ad, { nullable: true })
  async getAdById(@Arg("id", () => ID) id: number) {
    try {
      const ad = await Ad.findOne({ where: { id }, relations: ["category"] });
      if (!ad) {
        throw new Error("Ad not found");
      }
      return ad;
    } catch (error) {
      console.error("Error get Ad By Id:", error);
      throw new Error("Failed to get Ad By Id");
    }
  }

  @Query(() => [Ad])
  async getAdsByCategory(@Arg("categoryId", () => ID) categoryId: number) {
    try {
      const ads = await Ad.find({ where: { category: { id: categoryId } } });
      return ads;
    } catch (error) {
      console.error("Error fetching ads by category:", error);
      throw new Error("Failed to fetch ads by category");
    }
  }

  @Mutation(() => Ad)
  async createNewAd(@Arg("data") newAdData: NewAdInput) {
    try {
      if (!newAdData.categoryId) {
        throw new Error("Category ID is required");
      }
      const category = await Category.findOneOrFail({
        where: { id: newAdData.categoryId },
      });
      const newAd = Ad.create({
        ...newAdData,
        category: category,
      });
      const resultFromSave = await newAd.save();
      const resultForApi = await Ad.findOne({
        where: { id: resultFromSave.id },
        relations: ["category"],
      });

      return resultForApi;
    } catch (error) {
      console.error("Error createNewAd:", error);
      throw new Error("Failed to createNewAd");
    }
  }

  @Mutation(() => String)
  async deleteAd(@Arg("id", () => ID) id: number) {
    try {
      await Ad.delete(id);
      return "Ad deleted successfully";
    } catch (error) {
      console.error("Error deleteAd:", error);
      throw new Error("Failed to deleteAd");
    }
  }

  @Mutation(() => Ad)
  async updateAd(
    @Arg("id", () => ID) id: number,
    @Arg("data") updateAdData: UpdateAdInput
  ) {
    try {
      const adToUpdate = await Ad.findOneOrFail<Ad>({ where: { id } });
      if (!adToUpdate) {
        throw new Error("Ad not found");
      }

      if (updateAdData.title) {
        adToUpdate.title = updateAdData.title;
      }
      if (updateAdData.description) {
        adToUpdate.description = updateAdData.description;
      }
      if (updateAdData.owner) {
        adToUpdate.owner = updateAdData.owner;
      }
      if (updateAdData.price) {
        adToUpdate.price = updateAdData.price;
      }
      if (updateAdData.ville) {
        adToUpdate.ville = updateAdData.ville;
      }
      if (updateAdData.imgUrl) {
        adToUpdate.imgUrl = updateAdData.imgUrl;
      }
      if (updateAdData.categoryId) {
        const category = await Category.findOneOrFail<Category>({
          where: { id: updateAdData.categoryId },
        });

        if (!category) {
          throw new Error("Category not found");
        }
        adToUpdate.category = category;
      }

      await adToUpdate.save();

      return adToUpdate;
    } catch (error) {
      console.error("Error updating ad:", error);
      throw new Error("Failed to update ad");
    }
  }
}

export default AdResolver;
