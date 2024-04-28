import TimetableEvent from "../models/timetableevent-model";

const save = async (timetableEventData: any) => {
  const timetableEvent = new TimetableEvent(timetableEventData);
  return await timetableEvent.save();
};

const getAllTimetableEvents = async () => {
  return await TimetableEvent.find({});
};

const getTimetableEventById = async (id: any) => {
  return await TimetableEvent.findById(id);
};
const updateTimetableEventById = async (id: any, updatedData: any) => {
  return await TimetableEvent.findByIdAndUpdate(id, updatedData, { new: true });
};

const deleteTimetableEventById = async (id: any) => {
  return await TimetableEvent.findByIdAndDelete(id);
};

export default {
  save,
  getAllTimetableEvents,
  getTimetableEventById,
  updateTimetableEventById,
  deleteTimetableEventById,
};
