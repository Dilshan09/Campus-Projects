"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const constants_1 = __importDefault(require("./utills/constants"));
const user_route_1 = __importDefault(require("./routes/user-route"));
const course_route_1 = __importDefault(require("./routes/course-route"));
const room_route_1 = __importDefault(require("./routes/room-route"));
const resource_route_1 = __importDefault(require("./routes/resource-route"));
const day_route_1 = __importDefault(require("./routes/day-route"));
const time_route_1 = __importDefault(require("./routes/time-route"));
const timetable_route_1 = __importDefault(require("./routes/timetable-route"));
const timetableevent_route_1 = __importDefault(require("./routes/timetableevent-route"));
const requestMappings = (app) => {
    app.use(constants_1.default.API.PREFIX.concat("/user"), user_route_1.default);
    app.use(constants_1.default.API.PREFIX.concat("/course"), course_route_1.default);
    app.use(constants_1.default.API.PREFIX.concat("/room"), room_route_1.default);
    app.use(constants_1.default.API.PREFIX.concat("/resource"), resource_route_1.default);
    app.use(constants_1.default.API.PREFIX.concat("/day"), day_route_1.default);
    app.use(constants_1.default.API.PREFIX.concat("/time"), time_route_1.default);
    app.use(constants_1.default.API.PREFIX.concat("/timetable"), timetable_route_1.default);
    app.use(constants_1.default.API.PREFIX.concat("/timetableevent"), timetableevent_route_1.default);
};
exports.default = requestMappings;
