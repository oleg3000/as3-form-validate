package com.creativearea {
public dynamic class ValidationRule extends  Object{

	private var _validationRules : ValidationRulesBuilder;
	public var records : Object = {};
	public var rules : Array = []
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
		this.records.required = true;
		this.rules.push("required");
		this.msg.required = errorMessage;
		return this;
	}

    public function addAlphaNumeric (errorMessage : String) : ValidationRule
    {
		this.records.alphanumeric = true;
        this.rules.push("alphanumeric");
        this.msg.alphanumeric = errorMessage;
        return this;
    }

    public function addAlpha (errorMessage : String) : ValidationRule
    {
		this.records.alpha = true;
        this.rules.push("alpha");
        this.msg.alpha = errorMessage;
        return this;
    }

    public function addNumeric (errorMessage : String) : ValidationRule
    {
		this.records.numeric = true;
        this.rules.push("numeric");
        this.msg.numeric = errorMessage;
        return this;
    }

    public function addEmail (errorMessage : String) : ValidationRule
	{
		this.records.email = true;
		this.rules.push("email");
		this.msg.email = errorMessage;
		return this;
	}

	public function addPhone(errorMessage : String) : ValidationRule
	{
		this.records.phone = true;
		this.rules.push("phone");
		this.msg.phone = errorMessage;
		return this;
	}

	public function addMinLength (value : int, errorMessage : String) : ValidationRule
	{
		this.records.minlength = value;
		this.rules.push("minlength");
		this.msg.minlength = errorMessage;
		return this;
	}

	public function addMaxLength (value : int, errorMessage : String) : ValidationRule
	{
		this.records.maxlength = value;
		this.rules.push("maxlength");
		this.msg.maxlength = errorMessage;
		return this;
	}


	public function addMinValue (value : int, errorMessage : String) : ValidationRule
	{
		this.records.minvalue = value;
		this.rules.push("minvalue");
		this.msg.minvalue = errorMessage;
		return this;
	}

	public function addMaxValue (value : int, errorMessage : String) : ValidationRule
	{
		this.records.maxvalue = value;
		this.rules.push("maxvalue");
		this.msg.maxvalue = errorMessage;
		return this;
	}
}

}
