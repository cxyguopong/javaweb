package cli.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class Student implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return cli.pojo.Student.class.isAssignableFrom(clazz) ; 
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required.name", "Field name is required");
	}
	
	
}



