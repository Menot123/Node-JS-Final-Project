// Define your services here
const repo = require('../repositories/account.repository')


async function signUpAccount(username,phone,password) {
    try {
        if(await repo.registerAccount(username,phone,password) > 0) {
            return true
        }
    } catch (err) {
        throw new Error('Service: Cannot get account');
    }
}

async function handleLogin(phone,password) {
    try {
        let name = ""
        name = await repo.handleLogin(phone, password);
        if (name) {
            return name;
        } else {
            return false;
        }
    } catch (err) {
        throw new Error(err);
    }
}


module.exports = {
    signUpAccount, handleLogin
}