import mongoose from "mongoose";
import Time from "../models/time-model";

const save = async (timeData: any, session: any) => {
  const time = new Time(timeData);
  if (session) {
    return await time.save({ session });
  } else {
    return await time.save();
  }
};

const getAllTimes = async () => {
  return await Time.find({});
};

const getTimeById = async (id: string) => {
  return await Time.findById(id);
};

const updateTimeById = async (id: string, updatedData: any) => {
  return await Time.findByIdAndUpdate(id, updatedData /*{ new: true }*/);
};

const deleteTimeById = async (id: string) => {
  return await Time.findByIdAndDelete(id);
};

export default {
  save,
  getAllTimes,
  getTimeById,
  updateTimeById,
  deleteTimeById,
};
