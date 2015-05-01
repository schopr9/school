
class UploadController < ApplicationController
process :auto_orient # this should go before all other "process" steps

def auto_orient
  manipulate! do |image|
    image.tap(&:auto_orient)
  end
end	
  def index
     render :file => 'app\views\upload\uploadfile.rhtml'
  end
  def uploadFile
    post = DataFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
end
