class CalculatorController < ApplicationController
  def index
  end

  def form
    @type = {
        func: get_type_of_func(params[:type]),
        path_to: params[:type],
        second_form_type: 'number'
    }
    render :form
  end

  def calc
    a = params[:a].to_f
    b = params[:b].to_f
    res = case params[:type]
            when 'add'
              a + b
            when 'sub'
              a - b
            when 'div'
              a / b
            when 'mult'
              a * b
            when 'sin'
              Math.tan(a)
            when 'pow'
              a ** b
            when 'sqrt'
              a ** 0.5
            else
              0
          end
    redirect_to '/res/' + res.to_s
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
