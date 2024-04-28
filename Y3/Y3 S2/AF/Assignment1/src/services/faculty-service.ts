import Faculty from "../models/faculty-model";

const save = async (facultyData: any) => {
  const faculty = new Faculty(facultyData);
  return await faculty.save();
};

const getAllFacultys = async () => {
  return await Faculty.find({});
};

const getFacultyById = async (id: any) => {
  return await Faculty.findById(id);
};

const updateFacultyById = async (id: any, updatedData: any) => {
  return await Faculty.findByIdAndUpdate(id, updatedData, { new: true });
};

const deleteFacultyById = async (id: any) => {
  return await Faculty.findByIdAndDelete(id);
};

export default {
  save,
  getAllFacultys,
  getFacultyById,
  updateFacultyById,
  deleteFacultyById,
};
