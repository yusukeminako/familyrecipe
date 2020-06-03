class ContactsController < ApplicationController
  def new
    @contacts = Contact.new
  end

  def confirm
    session[:name] = contact_params[:name]
    session[:tel] = contact_params[:tel]
    session[:mail] = contact_params[:mail]
    session[:content] = contact_params[:content]
    @contacts = Contact.new(contact_params) # 新規インスタンス作成
  end

  def create
    # Contact.create(contact_params)
    @contacts = Contact.new(
      name: session[:name], # sessionに保存された値をインスタンスに渡す
      tel: session[:tel], # sessionに保存された値をインスタンスに渡す
      mail: session[:mail], # sessionに保存された値をインスタンスに渡す
      content: session[:content] # sessionに保存された値をインスタンスに渡す
    )
    if @contacts.save
      redirect_to done_contacts_path
    else
      render '/contacts/new'
    end
  end
  
  def done
  end

  private

  def contact_params
    params.permit(:name, :tel, :mail, :content)
    # 特定の値だけを呼び出すようにしている（name,tel,mail,content）
  end
end
