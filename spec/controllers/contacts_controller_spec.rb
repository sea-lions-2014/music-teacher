require 'spec_helper'

describe ContactsController do
  context '#index' do
    before(:each) do
      get :index
    end
    it 'should be ok' do
      expect(response).to be_ok
    end
    it 'should retrieve all existing contacts' do
      expect(assigns(:contacts)).to eq Contact.all
    end
  end
  context '#new' do
    before(:each) do
      get :new
    end
    it 'should be ok' do
      expect(response).to be_ok
    end
    it 'should instantiate a new contact model' do
      expect(assigns(:contact)).to be_an_instance_of Contact
      expect(assigns(:contact).persisted?).to be_false
    end
  end

end