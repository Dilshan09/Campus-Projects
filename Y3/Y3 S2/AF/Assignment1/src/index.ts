import express, { Express } from "express";
import cors from "cors";
import dotenv from "dotenv";
import { connectDB } from "./config/database-config";
import errorHandlerMiddleware from "./utills/error/error.middleware";
import constants from "./utills/constants";
import UserRouter from "./routes/user-route";
import CourseRouter from "./routes/course-route";
import RoomRouter from "./routes/room-route";
import ResourceRouter from "./routes/resource-route";
import Faculty from "./routes/faculty-route";
import DayRouter from "./routes/day-route";
import TimeRouter from "./routes/time-route";
import TimetableRouter from "./routes/timetable-route";
import TimetableEventRouter from "./routes/timetableevent-route";
import FacultyRouter from "./routes/faculty-route";

const app: Express = express();

dotenv.config();

app.use(express.json());
app.use(cors());

// API Prefix for routes
const API_PREFIX = constants.API.PREFIX;

// Registering routes
app.use(`${API_PREFIX}/user`, UserRouter);
app.use(`${API_PREFIX}/course`, CourseRouter);
app.use(`${API_PREFIX}/room`, RoomRouter);
app.use(`${API_PREFIX}/resource`, ResourceRouter);
app.use(`${API_PREFIX}/faculty`, FacultyRouter);
app.use(`${API_PREFIX}/day`, DayRouter);
app.use(`${API_PREFIX}/time`, TimeRouter);
app.use(`${API_PREFIX}/timetable`, TimetableRouter);
app.use(`${API_PREFIX}/timetableevent`, TimetableEventRouter);

// Error handler middleware
app.use(errorHandlerMiddleware);

const start = async () => {
  const port = process.env.PORT || 5000;
  try {
    app.listen(port, () => {
      console.log(`SERVER IS LISTENING ON PORT ${port}..!`);
      connectDB();
    });
  } catch (e) {
    console.log(e);
  }
};

start();
