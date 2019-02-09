class ApplicationController < ActionController::Base


  helper_method :current_user,:logged_in?,:timenow,:give_time

  def current_user
    @current_user || User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger]="Hey You Gotta Login First"
      redirect_to root_path
    end
  end

  def timenow

    a=Time.now.to_s
    arr=[]
    arr=a.split(' ')
    arr[1]=arr[1].to_s
    array=arr[1].split(':')
    return("#{array[0]}:#{array[1]}:#{array[2]}")
  end

  def give_time
    @time = Time.now.utc.to_s.split(" ").second
    render :partial => 'layouts/time_portion'
  end
end
