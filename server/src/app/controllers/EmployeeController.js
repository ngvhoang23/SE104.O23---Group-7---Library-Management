const db = require("../../config/db");
const bcrypt = require("bcrypt");
const moment = require("moment");

class EmployeeController {
  // [GET] /users/employees
  getEmployees(req, res) {
    const promise = () => {
      return new Promise((resolve, reject) => {
        db.query(
          `
            select ui.*, uai.user_name, uai.password, uai.role, uai.role from user_auth_info uai
                inner join user_info ui
                on uai.user_id = ui.user_id
            where uai.role = 'emp'
            `,
          (err, result) => {
            if (err) {
              reject(err);
            } else {
              resolve(result);
            }
          },
        );
      });
    };

    promise()
      .then((result) => {
        res.status(200).send(result);
      })
      .catch((err) => {
        res.status(400).send(err);
      });
  }

  // [GET] /users/employees/:user_id
  getEmployeesById(req, res) {
    const { user_id } = req.query;

    const promise = () => {
      return new Promise((resolve, reject) => {
        db.query(
          `
              select ui.*, uai.user_name, uai.password, uai.role, uai.role from user_auth_info uai
                  inner join user_info ui
                  on uai.user_id = ui.user_id
              where uai.role = 'emp' and uai.user_id=${user_id}
              `,
          (err, result) => {
            if (err) {
              reject(err);
            } else {
              resolve(result);
            }
          },
        );
      });
    };

    promise()
      .then((result) => {
        res.status(200).send(result);
      })
      .catch((err) => {
        res.status(400).send(err);
      });
  }

  // [GET] /users/employees/searching/:search_value
  searchEmployees(req, res) {
    const { search_value } = req.query;

    const promise = () => {
      const data = [`%${search_value}%`];
      const sql = `
      select ui.*, uai.user_name, uai.password, uai.role, uai.role from user_auth_info uai
      inner join user_info ui
      on uai.user_id = ui.user_id
      where uai.role = 'emp' and ui.full_name like ?
      `;
      return new Promise((resolve, reject) => {
        db.query(sql, data, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });
    };

    promise()
      .then((result) => {
        res.status(200).send(result);
      })
      .catch((err) => {
        res.status(400).send(err);
      });
  }

  // [POST] /users/employee
  postEmployee(req, res) {
    const { user_name, password, phone_num, address, birth_date, email_address, gender, first_name, last_name } =
      req.body;
    let user_avatar = "";
    if (req?.file) {
      user_avatar = `/user-avatars/${req?.file.filename}`;
    } else {
      user_avatar = `/user-avatars/default_avatar.png`;
    }

    const hashPassword = () => {
      return new Promise((resolve, reject) => {
        bcrypt
          .hash(password, 10)
          .then((hashed_password) => {
            resolve(hashed_password);
          })
          .catch((err) => {
            reject(err);
          });
      });
    };

    const insertUserAuthInfo = (hashed_password) => {
      return new Promise((resolve, reject) => {
        db.query(
          `insert into user_auth_info(user_name, password, role) values('${user_name}', '${hashed_password}', 'emp')`,
          (err, result) => {
            if (err) {
              reject(err);
            } else {
              resolve(result.insertId);
            }
          },
        );
      });
    };

    const insertUserInfo = (user_id) => {
      return new Promise((resolve, reject) => {
        db.query(
          `insert into user_info(user_id, user_avatar, phone_num, address, birth_date, email_address, gender, first_name, last_name, full_name, created_at) 
            values(${user_id}, 
            ${user_avatar ? `'${user_avatar}'` : null}, 
            ${phone_num ? `'${phone_num}'` : null},
            ${address ? `'${address}'` : null}, 
            ${birth_date ? `'${birth_date}'` : null}, 
            ${user_name ? `'${user_name}'` : null}, 
            ${gender}, 
            ${first_name ? `'${first_name}'` : null}, 
            ${last_name ? `'${last_name}'` : null}, 
            '${first_name} ${last_name}', 
            '${moment().format()}')`,
          (err, result) => {
            if (err) {
              reject(err);
            } else {
              resolve(result);
            }
          },
        );
      });
    };

    hashPassword()
      .then((hashed_password) => {
        return insertUserAuthInfo(hashed_password);
      })
      .then((user_id) => {
        return insertUserInfo(user_id);
      })
      .then((result) => {
        res.status(200).send(result);
      })
      .catch((err) => {
        console.log(err);
        res.status(400).send(err);
      });
  }

  // [DELETE] /users/employee
  deleteEmployee(req, res) {
    const { user_id } = req.body;

    const deleteAuthInfo = () => {
      return new Promise((resolve, reject) => {
        db.query(`delete from user_auth_info where user_id = ${user_id}`, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });
    };

    deleteAuthInfo()
      .then((result) => {
        res.status(200).send(result);
      })
      .catch((err) => {
        console.log(err);
        res.status(400).send(err);
      });
  }

  // [PUT] /users/employee
  editEmployee(req, res) {
    const { user_id, address, phone_num, birth_date, email_address, gender, first_name, last_name, created_at } =
      req.body;

    const user_avatar = `/user-avatars/${req?.file?.filename}`;

    const updateUserInfo = () => {
      const updateUserInfoSql = `
        update user_info set
        ${req?.file?.filename ? `user_avatar=${user_avatar ? `'${user_avatar}'` : null},` : ""} 
        phone_num=${phone_num ? `'${phone_num}'` : null}, 
        address=${address ? `'${address}'` : null}, 
        birth_date=${birth_date ? `'${birth_date}'` : null},
        email_address=${email_address ? `'${email_address}'` : null}, 
        gender=${gender ? `${gender}` : null}, 
        first_name=${first_name ? `'${first_name}'` : null}, 
        last_name=${last_name ? `'${last_name}'` : null},
        full_name='${first_name ? first_name : ""} ${last_name ? last_name : ""}',
        created_at=${created_at ? `'${created_at}'` : "created_at"}
        where user_id=${user_id}
      `;
      return new Promise((resolve, reject) => {
        db.query(updateUserInfoSql, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });
    };

    updateUserInfo()
      .then((result) => {
        res.status(200).send(result);
      })
      .catch((err) => {
        console.log(err);
        res.status(400).send(err);
      });
  }
}

module.exports = new EmployeeController();