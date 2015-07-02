class ContactsController < ApplicationController
  def contact
    render "contact"
  end
  def contact_submitted
    render "contact_submitted"
  end
end
