import Day from "../models/day-model";

const save = async (dayData: any) => {
  const day = new Day(dayData);
  return await day.save();
};

const getAllDays = async () => {
  return await Day.find({});
};

const getDayById = async (id: any) => {
  return await Day.findById(id);
};

const updateDayById = async (id: any, updatedData: any) => {
  return await Day.findByIdAndUpdate(id, updatedData, { new: true });
};

const deleteDayById = async (id: any) => {
  return await Day.findByIdAndDelete(id);
};

export default {
  save,
  getAllDays,
  getDayById,
  updateDayById,
  deleteDayById,
};
