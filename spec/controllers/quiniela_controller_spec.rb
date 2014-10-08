require 'rails_helper'

RSpec.describe QuinielasController, type: :controller do
  let (:valid_attributes) do
    { name: 'Jornada', start_at: '2014-11-09', end_at: '2014-11-09', cost: 10 }
  end

  let(:invalid_attributes) do
    { name: '', start_at: '', end_at:'', cost: -1 }
  end

  let(:valid_session) { {} }

  describe 'GET index' do
    it 'assigns all quinielas to @quinielas' do
      quiniela = Quiniela.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:quinielas)).to eq([quiniela])
    end
  end
    describe "GET show" do
    it "assigns the requested quiniela as @quiniela" do
      quiniela = Quiniela.create! valid_attributes
      get :show, {:id => quiniela.to_param}, valid_session
      expect(assigns(:quiniela)).to eq(quiniela)
    end
  end

  describe "GET new" do
    it "assigns a new quiniela as @quiniela" do
      get :new, {}, valid_session
      expect(assigns(:quiniela)).to be_a_new(Quiniela)
    end
  end

  describe "GET edit" do
    it "assigns the requested quiniela as @quiniela" do
      quiniela = Quiniela.create! valid_attributes
      get :edit, {:id => quiniela.to_param}, valid_session
      expect(assigns(:quiniela)).to eq(quiniela)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Quiniela" do
        expect {
          post :create, {:quiniela => valid_attributes}, valid_session
        }.to change(Quiniela, :count).by(1)
      end

      it "assigns a newly created quiniela as @quiniela" do
        post :create, {:quiniela => valid_attributes}, valid_session
        expect(assigns(:quiniela)).to be_a(Quiniela)
        expect(assigns(:quiniela)).to be_persisted
      end

      it "redirects to the created quiniela" do
        post :create, {:quiniela => valid_attributes}, valid_session
        expect(response).to redirect_to(Quiniela.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved quiniela as @quiniela" do
        post :create, {:quiniela => invalid_attributes}, valid_session
        expect(assigns(:quiniela)).to be_a_new(Quiniela)
      end

      it "re-renders the 'new' template" do
        post :create, {:quiniela => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { name: 'Atlas FC' }
      }

      it "updates the requested quiniela" do
        quiniela = Quiniela.create! valid_attributes
        put :update, {:id => quiniela.to_param, :quiniela => new_attributes}, valid_session
        quiniela.reload
        expect(assigns(:quiniela)).to eq(quiniela)
      end

      it "assigns the requested quiniela as @quiniela" do
        quiniela = Quiniela.create! valid_attributes
        put :update, {:id => quiniela.to_param, :quiniela => valid_attributes}, valid_session
        expect(assigns(:quiniela)).to eq(quiniela)
      end

      it "redirects to the quiniela" do
        quiniela = Quiniela.create! valid_attributes
        put :update, {:id => quiniela.to_param, :quiniela => valid_attributes}, valid_session
        expect(response).to redirect_to(quiniela)
      end
    end

    describe "with invalid params" do
      it "assigns the quiniela as @quiniela" do
        quiniela = Quiniela.create! valid_attributes
        put :update, {:id => quiniela.to_param, :quiniela => invalid_attributes}, valid_session
        expect(assigns(:quiniela)).to eq(quiniela)
      end

      it "re-renders the 'edit' template" do
        quiniela = Quiniela.create! valid_attributes
        put :update, {:id => quiniela.to_param, :quiniela => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested quiniela" do
      quiniela = Quiniela.create! valid_attributes
      expect {
        delete :destroy, {:id => quiniela.to_param}, valid_session
      }.to change(Quiniela, :count).by(-1)
    end

    it "redirects to the quinielas list" do
      quiniela = Quiniela.create! valid_attributes
      delete :destroy, {:id => quiniela.to_param}, valid_session
      expect(response).to redirect_to(quinielas_url)
    end
  end
  
end