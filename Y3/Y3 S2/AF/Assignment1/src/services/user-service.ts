import NotFoundError from "../utills/error/error.classes/NotFoundError";
import User from "../models/user-model";

const save = async (user: any, session: any) => {
  if (session) {
    return await user.save({ session });
  } else {
    return await user.save();
  }
};

const findByEmail = async (email: string) => {
  return await User.findOne({ email: email });
};

const getAllUsers = async () => {
  return await User.find({});
};

const findById = async (id: string) => {
  return await User.findById(id);
};

const editUserDetails = async (id: string, updatedDetails: any) => {
  return await User.findByIdAndUpdate(id, updatedDetails, { new: true });
};

export default {
  save,
  findByEmail,
  findById,
  getAllUsers,
  editUserDetails,
};
