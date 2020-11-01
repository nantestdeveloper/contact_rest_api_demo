class Api::V1::ContactsController < ApplicationController
	def create
		contact = Contact.new(contact_attributes)
    if contact.save
      render json: { contact: contact,message: "Contact saved.",status: 200}
    else
      render json: { errors: contact.errors, status: 400 }
    end
	end

	private
	  def contact_attributes
	    params.require(:contact)
	        .permit(:first_name, :last_name,:email,:phone,:message)
	  end
end
