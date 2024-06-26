import { Ad } from "../entities/ad";
const adService = {
    getOneAdById: async (id) => {
        try {
            const result = await Ad.find({
                where: { id: id },
                relations: { category: true },
            });
            console.log("result from getOneAdById", result);
            return result[0];
        }
        catch (err) {
            console.log("err", err);
            return err;
        }
    },
};
export default adService;
//# sourceMappingURL=adService.js.map