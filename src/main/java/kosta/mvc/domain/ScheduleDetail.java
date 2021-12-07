package kosta.mvc.domain;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters.LocalTimeConverter;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@ToString
public class ScheduleDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "id_seq", allocationSize = 1, name = "id_seq") //시퀀스 이름: schedule_no_seq
	private Long id;
	
 	private LocalDateTime startTime;
	
 	private LocalDateTime endTime;
	
	private String title; 	//제목
	private String content; //내용
	
	//매칭 게시물 번호
	@ManyToOne
	@JoinColumn(name = "match_no")
	private MatchBoard matchBoard;
	
	//장소 게시물 번호
	//@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "place_no")
	private PlaceBoard placeBoard;
}
