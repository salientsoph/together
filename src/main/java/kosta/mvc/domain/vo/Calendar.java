package kosta.mvc.domain.vo;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
public class Calendar {
	private Long id;
	private String groupId;
	private String title;
	private String writer;
	private String content;
	private String start;
	private String end;
	private boolean allday;
	private String textColor;
	private String backgroundColor;
	private String borderColor;
}
