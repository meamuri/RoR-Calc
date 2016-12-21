class CalculatorController < ApplicationController
  def index
  end

  def form
    unless Calc.func_in_actions?(params[:type])
        redirect_to '/go404/'
        return
    end
    @type = {
        func: Calc.get_type_of_func(params[:type]),
        action: params[:type],
        second_form_type: Calc.get_second_form_type(params[:type])
    }
    render :form
  end

  def calc
    a = params['a'].to_f
    b = params['b'].to_f
    res = Calc.get_res(params['f'], a, b)
    redirect_to '/res/' + res.to_s
  end


  def res
    @result = params[:value]
    render :res
  end

  def go404
    render :notFound
  end

end
