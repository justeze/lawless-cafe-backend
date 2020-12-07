const historyModel = require("../models/histori");
const responseForm = require("../helpers/form/responseForm");

const historyController = {
    showAllHistory: (_,res) => {
        historyModel.showAllHistory()
        .then((data) => {
            responseForm.success(res, data);
        }).catch((err) => {
            responseForm.error(res, err);
        })
    },
    searchHistoryByInvoice: (req,res) => {
        historyModel.searchHistoryByInvoice(req.params.tagihan)
        .then((data) => {
            res.status(200).json(data);
        })
        .catch((err) => {
            res.status(500).json(err);
        })
    }
}

module.exports = historyController;