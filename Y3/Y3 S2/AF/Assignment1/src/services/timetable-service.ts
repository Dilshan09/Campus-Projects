import Timetable from "../models/timetable-model";

const save = async (timetableData: any, session: any) => {
  const timetable = new Timetable(timetableData);
  if (session) {
    return await timetable.save({ session });
  } else {
    return await timetable.save();
  }
};

const getAllTimetables = async () => {
  return await Timetable.find({}).populate("course"); // Populate the 'course' field
};

const getTimetableById = async (id: any) => {
  return await Timetable.findById(id);
};

const updateTimetableById = async (id: any, updatedData: any) => {
  return await Timetable.findByIdAndUpdate(id, updatedData);
};

const deleteTimetableById = async (id: any) => {
  return await Timetable.findByIdAndDelete(id);
};

export default {
  save,
  getAllTimetables,
  getTimetableById,
  updateTimetableById,
  deleteTimetableById,
};
