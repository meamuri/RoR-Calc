class CalculatorController < ApplicationController
  def index
  end

  def form_add
    @type = 'add'
    render :form
  end

  def form_sub
    render :form
  end

  def form_div
    render :form
  end

  def form_mult
    render :form
  end

  def form_sin
    render :form
  end

  def form_pow
    render :form
  end

  def form_sqrt
    render :form
  end

end
