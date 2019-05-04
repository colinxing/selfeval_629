
class TestQuestionsController < ApplicationController
  
  def index
    @show_resume = false
    # @questions = Question.all
    @questions = Question.where(display: [true, nil])
    # @questions.each do |question|
    #   puts question.image_url
    # end
    @OK = params[:ok]
    @correctness = Hash[@questions.map {|question| [question.id, ""]}]
    @answers = Hash[@questions.map {|question| [question.id, "blank"]}]
    @mark = Hash[@questions.map {|question| [question.id, "~review"]}]
    @selected_topics = Hash[@questions.map {|question| [question.topic, ""]}]
    if params[:all_topics]!=nil
      @all_topics = params[:all_topics]
      @selected_topics = Hash[@questions.map {|question| [question.topic, "selected"]}]
    end
    @review = params[:review]
    @submitted = params[:submitted]
    @count=0
    if params[:selected_topics] != nil
      params[:selected_topics].each do |topic,selector|
        topic = topic.to_s
        if (selector == "selected")
          @selected_topics[topic] = ("selected")
        end
      end
    end

    if params[:mark] != nil
      params[:mark].each do |id,marker|
        id = id.to_i
        if (marker == "marked")
          @mark[id] = ("marked")
        end
      end
    end
    if params[:answers] != nil
      params[:answers].each do |id, answer|
        id = id.to_i
        question = Question.find_by(:id => id)
        if (question.answer == answer)
          @correctness[id] = ("correct")
          @count=@count+1
        elsif (answer != "blank")
          @correctness[id] = ("wrong")
        end
        if ( @mark[id] != ("marked"))
          if (answer == "blank")
            @mark[id] = ("unanswered")
          else 
            @mark[id] = ("answered")
          end
        end
        @answers[id] = ("#{answer}")
      end
    end
    rec = Testrecs.all
    #puts session
    #@user_id=session[:user_id]#current_user.email
    @user_id=current_user.id
    @recno=rec.where(userid: @user_id).count
    #@recno=Testrecs.first(:conditions => ["email = (?)", current_user.email])
    #@recno=rec.count
    if @recno == 0
        @show_resume = false
    else
        @show_resume = true
    end
  end
  
  def resume
    rec = Testrecs.find_by(userid: current_user.id)
    @mark1=rec.mark
    @corr1=rec.correctness
    @ans1=rec.answers
    @top1=rec.seltopics
    @alltop1=rec.alltopics
    rec.destroy
    
    ActionController::Parameters.permit_all_parameters = true
    
    last_params = ActionController::Parameters.new(answers: @ans1, correctness: @corr1, mark: @mark1, selected_topics: @top1, all_topics: @alltop1,  notice: "Last saved test loaded.", ok: "clicked")
    last_params.permit!
    last_params.permitted?
    #last_params.permit(:mark,:notice)
    #puts last_params
    redirect_to test_questions_path(last_params)
    #redirect_to "/test_questions", :notice => "Last saved test loaded.", :mark => @mark1, :correctness => @corr1, :answers => @ans1
  end

  def signoutwpause
    @mark=params[:mark]
    @correctness=params[:correctness]
    @answers=params[:answers]
    @topics=params[:selected_topics]
    @alltop=params[:all_topics]
    #@user_id=session[:user_id]#current_user.email
    @user_id=current_user.id
    
    puts params[:selected_topics]
    puts 
    rec = Testrecs.new(userid: @user_id , mark: @mark, correctness: @correctness, alltopics: @alltop, answers: @answers, seltopics: @topics)
    rec.save
    #reset_session
    #reset_params
    user = current_user
    sign_out user
    redirect_to "/", :notice => "Test saved and logged out successfully."
    #redirect_to "/",:notice => "Test saved and logged out successfully." 
    # click logout (/user/sign_out)
    #recs = Testrecs.all
    #recs.each do |rec|
    #  test = object_from_yaml(rec.value)
    #  puts test
    #end
  end

  def summary
    @questions = Question.all
    @count1 = params[:count]
    @selected_topics=params[:selected_topics]
    @answers=params[:answers]
    @total = params[:total]
  end



end
