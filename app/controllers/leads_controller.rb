class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  def index
    @leads = Lead.all.order(created_at: :desc)
    @count = {
      prospect: Lead.where(status: :prospect).count, #where pone condiciones los que cumple una condicion
      interested: Lead.where(status: :interested).count,
      client: Lead.where(status: :client).count
    }
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to leads_path, notice: "Creado con éxito."
    else
      render :new
    end
  end

  def show
    @conversations = @lead.conversations
    @conversation = Conversation.new
  end

  def edit
  end

  def update
    if @lead.update(lead_params)
      redirect_to leads_path, notice: "Actualizado con éxito."
    else
      render :edit
    end
  end

  def destroy
    @lead.destroy
    redirect_to leads_path, notice: "Eliminado con éxito."
  end

  private

  def set_lead
    @lead = Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(:email, :name, :phone, :status)
  end
end