class ImageReplica < Replica
  mount_uploader :image, ReplicaImageUploader
end
