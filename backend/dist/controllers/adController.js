import adService from "../services/adService";
const adController = {
    getOneAdById: async (req, res) => {
        try {
            const result = await adService.getOneAdById(Number.parseInt(req.params.adId));
            res.send(result);
        }
        catch (err) {
            console.log("error", err);
            res.send("an error has occured");
        }
    },
};
export default adController;
//# sourceMappingURL=adController.js.map