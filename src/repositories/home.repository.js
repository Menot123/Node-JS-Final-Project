const dbClient = require('./db_client');

async function getListNotifications() {
    const record = await dbClient.query(
        `SELECT * FROM tintuc WHERE category = "binhluan" `
    );
    return record;
};

async function getBlogs() {
    const record = await dbClient.query(
        `SELECT * FROM tintuc WHERE category = "blog" `
    );
    return record;
};

async function getShortFilms() {
    const record = await dbClient.query(
        `SELECT * FROM PHIM `
    );
    return record;
};

async function getFilms() {
    const record = await dbClient.query(
        `SELECT * FROM  phim WHERE category = "films`
    )
}

async function getInfomationUser(name) {
    const record = await dbClient.query(
        `SELECT * FROM  user WHERE hoten = ?`, [name]
    )
    return record
}

async function handleUpdateInfo(user, id) {
    var record = -1
    if (user.phoneContact == null) {
        if (user.new__pass != '' && user.new__pass != undefined) {
            if (user.input__Email != null) {
                record = await dbClient.query(
                    `update user set ngaysinh = ? , gioitinh = ? ,email = ? , diachi = ?, tinh = ?  where userid = ?`,
                    [user.input__birth, user.gender, user.input__Email, user.input__address, user.province, id]
                )
            } else {
                record = await dbClient.query(
                    `update user set ngaysinh = ? , gioitinh = ? , diachi = ?, tinh = ? , matkhau = ? where userid = ?`,
                    [user.input__birth, user.gender,  user.input__address, user.province, user.new__pass, id]
                )
            }
        } else if (user.input__Email != null) {
            record = await dbClient.query(
                `update user set ngaysinh = ? , gioitinh = ? ,email = ? , diachi = ?, tinh = ?  where userid = ?`,
                [user.input__birth, user.gender, user.input__Email, user.input__address, user.province, id]
            )
        } else {
            record = await dbClient.query(
                `update user set ngaysinh = ? , gioitinh = ? , diachi = ?, tinh = ?  where userid = ?`,
                [user.input__birth, user.gender, user.input__address, user.province, id]
            )
        }
    } else if(user.input__Email == null) {
        record = await dbClient.query(
            `update user set ngaysinh = ? , gioitinh = ? ,sodienthoai = ?, diachi = ?, tinh = ?  where userid = ?`,
            [user.input__birth, user.gender, user.phoneContact , user.input__address, user.province, id]
        )
    } else {
        record = await dbClient.query(
            `update user set ngaysinh = ? , gioitinh = ?, email = ? ,sodienthoai = ?, diachi = ?, tinh = ?  where userid = ?`,
            [user.input__birth, user.gender,user.input__Email, user.phoneContact , user.input__address, user.province, id]
        )
    }
    return record.changedRows
}

async function checkPass(pass, phone) {
    const record = await dbClient.query(
        `select * from user where sodienthoai = ? && matkhau = ?`, [phone, pass]
    )
    return record.length
}
module.exports = {
    getListNotifications,
    getBlogs,
    getShortFilms,
    getFilms,
    getInfomationUser,
    handleUpdateInfo,
    checkPass,
}