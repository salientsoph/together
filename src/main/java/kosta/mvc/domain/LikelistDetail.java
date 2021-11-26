package kosta.mvc.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-25
 */
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class LikelistDetail {
	//찜목록 번호(pk)
	@Id
	private long likeNo;
	
	//장소 게시물 번호
	private long placeNo;
}
