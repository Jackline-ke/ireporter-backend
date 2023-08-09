class ApplicationController < ActionController::Base
  include ActionController::Cookies
  protect_from_forgery with: :exception
  def encode_token(uid, email)
      payload = {
          data:{
              uid: uid,
              email: email
          },
          exp: Time.now.to_i + (6*3600)
      }
  end
  def decode_token
      auth_header = request.headers['Authorization']
      if auth_header
          token = auth_header.split(' ')[1]
          begin
              JWT.decode(token, 'secret', true, algorithm: 'HS256')
          rescue JWT::DecodeError
              nil
          end
      end
  end
  def authorised_user
      decoded_token = decode_token()
      if decoded_token
          @uid = decoded_token[0]['data']['uid'].to_i
      end
  end
  def user
      User.find(@uid)
  end
   def save_user(id)
      session[:uid] = id
      session[:expiry] =Time.now.to_i + (6*3600)
  end
   def session_expired?
      session[:expiry] ||= Time.now
      puts session[:expiry]
      puts session[:uid]
      puts @uid
      puts Time.now.to_i
      time_diff = session[:expiry].to_i - Time.now.to_i
      puts time_diff
      unless time_diff > 0
          render json: { message: 'failed', data: { info: 'Your session has expired. Please login again to continue' } },  status: 401
      end
  end
     def remove_user
      session.delete(:uid)
      session[:expiry] = Time.now
  end
  def authorize
      render json: {message: "Unauthorized access"}, status: :unauthorized unless
      authorised_user
      
  end
end