class HomeController < ApplicationController
  def index

  end

  def team

  end

  def research

  end

  def publications
    @papers = Paper.all.order("pubdate DESC")
  end

  def jobs
    @jobs = Job.all
  end

  def redcap
    # if !current_user || !current_user.is_redcap_permitted?
    #   redirect_to '/error#error_404'
    # end
    @api_params = {:token => '6767D319D4AB8EC7B27D071C54C5657F', :format => 'json', :content => 'record', :type => 'flat', :returnFormat => 'json' }
    @url = 'https://redcap.ucsf.edu/api/'
    # @api_results = HTTParty.post(@url, :body => @api_params)
    # puts @api_results.first
  end
end
