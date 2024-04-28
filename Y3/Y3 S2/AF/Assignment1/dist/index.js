"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const dotenv_1 = __importDefault(require("dotenv"));
const database_config_1 = require("./config/database-config");
const error_middleware_1 = __importDefault(require("./utills/error/error.middleware"));
const constants_1 = __importDefault(require("./utills/constants"));
const user_route_1 = __importDefault(require("./routes/user-route"));
const course_route_1 = __importDefault(require("./routes/course-route"));
const room_route_1 = __importDefault(require("./routes/room-route"));
const resource_route_1 = __importDefault(require("./routes/resource-route"));
const day_route_1 = __importDefault(require("./routes/day-route"));
const time_route_1 = __importDefault(require("./routes/time-route"));
const timetable_route_1 = __importDefault(require("./routes/timetable-route"));
const timetableevent_route_1 = __importDefault(require("./routes/timetableevent-route"));
const faculty_route_1 = __importDefault(require("./routes/faculty-route"));
const app = (0, express_1.default)();
dotenv_1.default.config();
app.use(express_1.default.json());
app.use((0, cors_1.default)());
// API Prefix for routes
const API_PREFIX = constants_1.default.API.PREFIX;
// Registering routes
app.use(`${API_PREFIX}/user`, user_route_1.default);
app.use(`${API_PREFIX}/course`, course_route_1.default);
app.use(`${API_PREFIX}/room`, room_route_1.default);
app.use(`${API_PREFIX}/resource`, resource_route_1.default);
app.use(`${API_PREFIX}/faculty`, faculty_route_1.default);
app.use(`${API_PREFIX}/day`, day_route_1.default);
app.use(`${API_PREFIX}/time`, time_route_1.default);
app.use(`${API_PREFIX}/timetable`, timetable_route_1.default);
app.use(`${API_PREFIX}/timetableevent`, timetableevent_route_1.default);
// Error handler middleware
app.use(error_middleware_1.default);
const start = async () => {
    const port = process.env.PORT || 5000;
    try {
        app.listen(port, () => {
            console.log(`SERVER IS LISTENING ON PORT ${port}..!`);
            (0, database_config_1.connectDB)();
        });
    }
    catch (e) {
        console.log(e);
    }
};
start();
