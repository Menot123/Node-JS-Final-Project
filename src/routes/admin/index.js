const express = require('express');
const router = express.Router();

const adminController = require('../../app/controllers/admin.controller');

router.get('/api/accounts', adminController.getAccounts);
router.get('/quan-ly-tai-khoan', adminController.manageAccounts);

router.post('/api/delete/:id', adminController.handleDelete);
router.get('/api/get-info/:id', adminController.getInfo);
router.put('/api/update/:id', adminController.updateInfo);

router.get('/api/phan-hoi', adminController.getResponsesAPI)
router.get('/phan-hoi',adminController.getResponses)

router.get('/api/suat-chieu', adminController.getSuatChieuAPI)
router.get('/suat-chieu', adminController.getSuatChieu)
router.post('/suat-chieu', adminController.getSuatChieu2)

router.get('/api/ma-phim', adminController.getMaPhimAPI)
router.post('/api/ma-phim', adminController.addMaPhim)
router.post('/api/:masuatchieu', adminController.hideMaPhim)
router.get('/api/phim', adminController.getPhimAPI)






module.exports = router;