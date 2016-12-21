$actions = %w(add sub mult div sqrt pow sin)

class Calc
  def self.get_second_form_type(type)
    if type == 'sqrt' or type == 'sin' or type == 'pow'
      'hidden'
    else
      'number'
    end
  end

  def self.get_res(f, a, b)
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
        Math.sin(a)
      when 'pow'
        a ** 2
      when 'sqrt'
        a ** 0.5
      else
        0
    end
  end

  def self.get_type_of_func(type)
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
