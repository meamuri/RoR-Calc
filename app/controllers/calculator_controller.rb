class CalculatorController < ApplicationController
  def index
  end

  def form
    @type = {
        func: get_type_of_func(params[:type]),
        action: params[:type],
        second_form_type: get_second_form_type(params[:type])
    }
    render :form
  end

  def calc
    a = params['a'].to_f
    b = params['b'].to_f
    res = get_res(params['f'], a, b)
    redirect_to '/res/' + res.to_s
  end


  def res
    @result = params[:value]
    render :res
  end

  private

  def get_second_form_type(type)
    if type == 'sqrt' or type == 'sin' or type == 'pow'
      'hidden'
    else
      'number'
    end
  end

  def get_res(f, a, b)
    case f
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
        a ** 2
      when 'sqrt'
        a ** 0.5
      else
        0
    end
  end

  def get_type_of_func(type)
    'f: '+ case type
             when 'add'
               'a + b'
             when 'sub'
               'a - b'
             when 'mult'
               'a * b'
             when 'div'
               'a / b'
             when 'pow'
               'pow(x, 2)'
             when 'sqrt'
               'sqrt(x)'
             else
               'sin(x)'
             end
    end

end
