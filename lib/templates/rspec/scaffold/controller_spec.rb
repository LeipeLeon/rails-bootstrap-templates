require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

<% module_namespacing do -%>
RSpec.describe <%= controller_class_name %>Controller, <%= type_metatag(:controller) %> do

  render_views

  # This should return the minimal set of attributes required to create a valid
  # <%= class_name %>. As you add validations to <%= class_name %>, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # <%= controller_class_name %>Controller. Be sure to keep this updated too.
  let(:valid_session) { {} }

<% unless options[:singleton] -%>
  describe "GET #index" do
    it "assigns all <%= table_name.pluralize %> as @<%= table_name.pluralize %>" do
      <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
      get :index, {}, valid_session
<% else -%>
      get :index, params: {}, session: valid_session
<% end -%>
      expect(assigns(:<%= table_name %>)).to eq([<%= file_name %>])
    end
  end

<% end -%>
  describe "GET #show" do
    it "assigns the requested <%= ns_file_name %> as @<%= ns_file_name %>" do
      <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
      get :show, {:id => <%= file_name %>.to_param}, valid_session
<% else -%>
      get :show, params: {id: <%= file_name %>.to_param}, session: valid_session
<% end -%>
      expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>)
    end
  end

  describe "GET #new" do
    it "assigns a new <%= ns_file_name %> as @<%= ns_file_name %>" do
<% if RUBY_VERSION < '1.9.3' -%>
      get :new, {}, valid_session
<% else -%>
      get :new, params: {}, session: valid_session
<% end -%>
      expect(assigns(:<%= ns_file_name %>)).to be_a_new(<%= class_name %>)
    end
  end

  describe "GET #edit" do
    it "assigns the requested <%= ns_file_name %> as @<%= ns_file_name %>" do
      <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
      get :edit, {:id => <%= file_name %>.to_param}, valid_session
<% else -%>
      get :edit, params: {id: <%= file_name %>.to_param}, session: valid_session
<% end -%>
      expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new <%= class_name %>" do
        expect {
<% if RUBY_VERSION < '1.9.3' -%>
          post :create, {:<%= ns_file_name %> => valid_attributes}, valid_session
<% else -%>
          post :create, params: {<%= ns_file_name %>: valid_attributes}, session: valid_session
<% end -%>
        }.to change(<%= class_name %>, :count).by(1)
      end

      it "assigns a newly created <%= ns_file_name %> as @<%= ns_file_name %>" do
<% if RUBY_VERSION < '1.9.3' -%>
        post :create, {:<%= ns_file_name %> => valid_attributes}, valid_session
<% else -%>
        post :create, params: {<%= ns_file_name %>: valid_attributes}, session: valid_session
<% end -%>
        expect(assigns(:<%= ns_file_name %>)).to be_a(<%= class_name %>)
        expect(assigns(:<%= ns_file_name %>)).to be_persisted
      end

      it "redirects to the <%= ns_file_name %> index" do
<% if RUBY_VERSION < '1.9.3' -%>
        post :create, {:<%= ns_file_name %> => valid_attributes}, valid_session
<% else -%>
        post :create, params: {<%= ns_file_name %>: valid_attributes}, session: valid_session
<% end -%>
        expect(response).to redirect_to(<%= index_helper %>_url)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved <%= ns_file_name %> as @<%= ns_file_name %>" do
<% if RUBY_VERSION < '1.9.3' -%>
        post :create, {:<%= ns_file_name %> => invalid_attributes}, valid_session
<% else -%>
        post :create, params: {<%= ns_file_name %>: invalid_attributes}, session: valid_session
<% end -%>
        expect(assigns(:<%= ns_file_name %>)).to be_a_new(<%= class_name %>)
      end

      it "re-renders the 'new' template" do
<% if RUBY_VERSION < '1.9.3' -%>
        post :create, {:<%= ns_file_name %> => invalid_attributes}, valid_session
<% else -%>
        post :create, params: {<%= ns_file_name %>: invalid_attributes}, session: valid_session
<% end -%>
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested <%= ns_file_name %>" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
        put :update, {:id => <%= file_name %>.to_param, :<%= ns_file_name %> => new_attributes}, valid_session
<% else -%>
        put :update, params: {id: <%= file_name %>.to_param, <%= ns_file_name %>: new_attributes}, session: valid_session
<% end -%>
        <%= file_name %>.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested <%= ns_file_name %> as @<%= ns_file_name %>" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
        put :update, {:id => <%= file_name %>.to_param, :<%= ns_file_name %> => valid_attributes}, valid_session
<% else -%>
        put :update, params: {id: <%= file_name %>.to_param, <%= ns_file_name %>: valid_attributes}, session: valid_session
<% end -%>
        expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>)
      end

      it "redirects to the <%= ns_file_name %> index" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
        put :update, {:id => <%= file_name %>.to_param, :<%= ns_file_name %> => valid_attributes}, valid_session
<% else -%>
        put :update, params: {id: <%= file_name %>.to_param, <%= ns_file_name %>: valid_attributes}, session: valid_session
<% end -%>
        expect(response).to redirect_to(<%= index_helper %>_url)
      end
    end

    context "with invalid params" do
      it "assigns the <%= ns_file_name %> as @<%= ns_file_name %>" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
        put :update, {:id => <%= file_name %>.to_param, :<%= ns_file_name %> => invalid_attributes}, valid_session
<% else -%>
        put :update, params: {id: <%= file_name %>.to_param, <%= ns_file_name %>: invalid_attributes}, session: valid_session
<% end -%>
        expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>)
      end

      it "re-renders the 'edit' template" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
        put :update, {:id => <%= file_name %>.to_param, :<%= ns_file_name %> => invalid_attributes}, valid_session
<% else -%>
        put :update, params: {id: <%= file_name %>.to_param, <%= ns_file_name %>: invalid_attributes}, session: valid_session
<% end -%>
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested <%= ns_file_name %>" do
      <%= file_name %> = <%= class_name %>.create! valid_attributes
      expect {
<% if RUBY_VERSION < '1.9.3' -%>
        delete :destroy, {:id => <%= file_name %>.to_param}, valid_session
<% else -%>
        delete :destroy, params: {id: <%= file_name %>.to_param}, session: valid_session
<% end -%>
      }.to change(<%= class_name %>, :count).by(-1)
    end

    it "redirects to the <%= table_name %> list" do
      <%= file_name %> = <%= class_name %>.create! valid_attributes
<% if RUBY_VERSION < '1.9.3' -%>
      delete :destroy, {:id => <%= file_name %>.to_param}, valid_session
<% else -%>
      delete :destroy, params: {id: <%= file_name %>.to_param}, session: valid_session
<% end -%>
      expect(response).to redirect_to(<%= index_helper %>_url)
    end
  end

end
<% end -%>
