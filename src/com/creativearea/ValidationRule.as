package com.creativearea {
public dynamic class ValidationRule extends  Object{

	private var _validationRules : ValidationRulesBuilder;
	public var rules : Object = {};
	public var msg : Object = {};

	public function ValidationRule(validationRules : ValidationRulesBuilder)
	{
		_validationRules = validationRules;
	}

	public function get parent() : ValidationRulesBuilder
	{
		return _validationRules;
	}

	public function addRequired (errorMessage : String) : ValidationRule
	{
		this.rules.required = true;
		this.msg.required = errorMessage;
		return this;
	}

	public function addEmail (errorMessage : String) : ValidationRule
	{
		this.rules.email = true;
		this.msg.email = errorMessage;
		return this;
	}

	public function addPhone(errorMessage : String) : ValidationRule
	{
		this.rules.phone = true;
		this.msg.phone = errorMessage;
		return this;
	}

	public function addMinLength (value : int, errorMessage : String) : ValidationRule
	{
		this.rules.minlength = value;
		this.msg.minlength = errorMessage;
		return this;
	}

	public function addMaxLength (value : int, errorMessage : String) : ValidationRule
	{
		this.rules.maxlength = value;
		this.msg.maxlength = errorMessage;
		return this;
	}


	public function addMinValue (value : int, errorMessage : String) : ValidationRule
	{
		this.rules.minvalue = value;
		this.msg.minvalue = errorMessage;
		return this;
	}

	public function addMaxValue (value : int, errorMessage : String) : ValidationRule
	{
		this.rules.maxvalue = value;
		this.msg.maxvalue = errorMessage;
		return this;
	}
}

}
