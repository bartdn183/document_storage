class Document < ApplicationRecord

	belongs_to :category

	has_attached_file :document
	validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/zip application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/vnd.openxmlformats-officedocument.spreadsheetml.sheet application/vnd.openxmlformats-officedocument.presentationml.presentation), :message => "Sorry! We do not accept the attached file type"}
	
end
