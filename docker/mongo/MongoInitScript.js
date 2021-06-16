const conn = new Mongo();
print("=========carbon-mongo Initializing started!=========");
print(`connected to : ${conn}`);
let MONGO_FILE_DATABASE_NAME    = "mongoFile";

//create carbonuser service user
let CARBON_USER_DATABASE_NAME   = "carbonuser";
let CARBON_USER_USER_NAME       = "carbonuser";
let CARBON_USER_USER_PWD        = "Maple@user";

print(`${CARBON_USER_DATABASE_NAME} database initialization started!`);
db = conn.getDB(CARBON_USER_DATABASE_NAME);
print(`switch to ${CARBON_USER_DATABASE_NAME}`);
db.createUser({
    user:CARBON_USER_USER_NAME,
    pwd:CARBON_USER_USER_PWD,
    roles:[{role:"dbOwner",db:CARBON_USER_DATABASE_NAME},
        {role:"readWrite",db:MONGO_FILE_DATABASE_NAME}]
})
print(`${CARBON_USER_DATABASE_NAME}  database initialization done!`);

//create carbonface service user
let CARBONFACE_DATABASE_NAME   = "carbonface";
let CARBONFACE_USER_NAME       = "carbonface";
let CARBONFACE_USER_PWD        = "Maple@carbonface";

print(`${CARBONFACE_DATABASE_NAME} database initialization started!`);
db = conn.getDB(CARBONFACE_DATABASE_NAME);
print(`switch to ${CARBONFACE_DATABASE_NAME}`);
db.createUser({
    user:CARBONFACE_USER_NAME,
    pwd:CARBONFACE_USER_PWD,
    roles:[
        {role:"dbOwner",db:CARBONFACE_DATABASE_NAME},
        {role:"readWrite",db:MONGO_FILE_DATABASE_NAME}]
})
print(`${CARBONFACE_DATABASE_NAME}  database initialization done!`);

