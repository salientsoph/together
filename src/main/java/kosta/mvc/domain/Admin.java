package kosta.mvc.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Admin {
	
	@Id
	private String adminId;
	
	private String adminPwd;
	
	private String adminNickname;
	
	@OneToMany(mappedBy = "admin")
	private List<NoticeBoard> noticeBoardList;
}
