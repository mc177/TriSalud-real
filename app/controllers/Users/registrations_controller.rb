# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  
# GET /resource/sign_up
   #def new    
    #@user = User.new
    #@user.pacientes.build    
   #end

  # POST /resource
  #def create
   #   @cant=     
    #  @user = User.new sign_up_params
     # @paciente= @user.pacientes          
      #@user.estatus = "A"
      #@paciente.user_id= @user.id
      #@user.save
      
  #end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end
private
  def sign_up_params
    params.require(:user).permit( :email, :password, :password_confirmation, :rol_id, pacientes_attributes: [:user_id, :ced_paciente, :nombres, :apellidos, :nombres_responsable, :apellidos_responsable, :telefono_responsable, :direccion, :telefono, :edad, :sexo, :estatus])
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password,:rol_id )
  end
  def paciente_params
    params.require(:paciente).permit(:user_id, :ced_paciente, :nombres, :apellidos, :nombres_responsable, :apellidos_responsable, :telefono_responsable, :direccion, :telefono, :edad, :sexo, :estatus)
  end

  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
 
    # Use callbacks to share common setup or constraints between actions.
    #def set_user
     # @user1 = User.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
   
    
  end

