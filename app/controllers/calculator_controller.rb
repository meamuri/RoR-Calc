class CalculatorController < ApplicationController
  def index
  end

  def form
    @type = {
        func: get_type_of_func(params[:type]),
        path_to: 'calculator/res/' + params[:type],
        second_form_type: 'number'
    }
    render :form
  end

  def calculate

    redirect_to '/res/21'
  end

  def res
    @result = params[:value]
    render :res
  end

  private

  def get_type_of_func(type)
    f = 'f: '
    if type == 'add'
      return f + 'a + b'
    end
    if type == 'sub'
      return f + 'a - b'
    end
    if type == 'mult'
      return f + 'a * b'
    end
    if type == 'div'
      return f + 'a / b'
    end

    if type == 'pow'
      return f + 'pow(x, k)'
    end
    if type == 'sqrt'
      return f + 'sqrt(x)'
    end

    return f + 'sin(x)'


  end

end
