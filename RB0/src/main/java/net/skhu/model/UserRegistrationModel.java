package net.skhu.model;

import javax.persistence.Convert;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import lombok.Data;
import net.skhu.domain.BooleanToYNConverter;
@Data
@Convert(converter = BooleanToYNConverter.class, attributeName = "agree")
public class UserRegistrationModel {
	
	@NotEmpty
	@Size(min=9, max=9)
	String id;

	@NotEmpty
	@Size(min=2, max=30)
	String name;
	
	@NotEmpty
	@Size(min=8, max=18)
	String pw;
	
	@NotEmpty
	@Size(min=8, max=18)
	String pc;
	
	Boolean pwc;
	
	Integer departmentId;
	
	Integer grade;

	@Email
	String email;
	
	String hp;
	
	Boolean agree;
	
}