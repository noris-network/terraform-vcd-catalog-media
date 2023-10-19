variable "vdc_org_name" {
  description = "The name of the organization to use."
  type        = string
}

variable "catalog_name" {
  description = "The name of the catalog where to upload the media file."
  type        = string
}

variable "name" {
  description = "Media file name in catalog."
  type        = string
}

variable "description" {
  description = "Description of media file."
  type        = string
  default     = null
}

variable "media_path" {
  description = "Absolute or relative path to file to upload."
  type        = string
  default     = null
}

variable "upload_piece_size" {
  description = "Size in MB for splitting upload size."
  type        = number
  default     = 1
}

variable "metadata_entry" {
  description = "A set of metadata entries to assign."
  type        = list(map(string))
  default     = []
}
