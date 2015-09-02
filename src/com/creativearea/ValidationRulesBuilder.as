package com.creativearea {
public class ValidationRulesBuilder {

	public var validationObject : Object = {};

	public function ValidationRulesBuilder()
	{
	}
	
	public static function build (header : String = "") : ValidationRulesBuilder
	{
		var rules : ValidationRulesBuilder = new ValidationRulesBuilder();
		rules.validationObject.msg = header;
		rules.validationObject.fields = {};
		return rules;
	}

	public function addRule(fieldName : String) : ValidationRule
	{
		var rule : ValidationRule = new ValidationRule(this);
		this.validationObject.fields[fieldName] = rule;
		return rule;
	}



}
}
