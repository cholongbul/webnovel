package com.bit.domain;

import lombok.Data;

@Data
public class Novel_allVO {
	private NovelVO novel;
	private Novel_authorVO novel_author;
	private Novel_charVO novel_char;
	private Novel_ntagVO novel_ntag;
	private Novel_pubVO novel_pub;
	private Novel_userVO novel_user;
	private Novel_webVO novel_web;
	private AuthorVO author;
	private CharacterVO character;
	private NtagVO ntag;
	private PublisherVO pub;
	private UserVO user;
	private WebVO web;

}
