package com.bit.domain;

import lombok.Data;

@Data
public class UserVO {
	private String u_id;
	private String pwd;
	private String email;
	private String gender;
	private String birth;
	private String created;

}
