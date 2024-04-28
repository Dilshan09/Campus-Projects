import Resource from "../models/resource-model";

const save = async (resourceData: any) => {
  const resource = new Resource(resourceData);
  return await resource.save();
};

const getAllResources = async () => {
  return await Resource.find({});
};

const getResourceById = async (id: string) => {
  return await Resource.findById(id);
};

const updateResourceById = async (id: string, updatedData: any) => {
  return await Resource.findByIdAndUpdate(id, updatedData, { new: true });
};

const deleteResourceById = async (id: string) => {
  return await Resource.findByIdAndDelete(id);
};

export default {
  save,
  getAllResources,
  getResourceById,
  updateResourceById,
  deleteResourceById,
};
