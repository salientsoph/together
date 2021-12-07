package kosta.mvc.domain.dto;

import org.modelmapper.ModelMapper;

import kosta.mvc.domain.MatchBoard;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MatchBoardDTO {

	private ModelMapper mdoelMapper = new ModelMapper();
	
	private int matchNo;
	
	private String matchTitle;
	
	private String matchContent;
	
	private String matchRegdate;
	
	private int matchCount;
	
	private String matchRequestLastDate;
	
	private String tripDate;
	
	private int tripState;
	
	private int matchPeopleNum;
	
	private int matchAgeGroup;
	
	private int matchGender;
	
	private String customer;
	
	private int region;
	
	public  MatchBoardDTO domainToDTO(MatchBoard matchBoard) {
		return mdoelMapper.map(matchBoard, MatchBoardDTO.class);
	}
	
	public  MatchBoard dtoToDomain(MatchBoardDTO matchBoardDTO) {
		return mdoelMapper.map(matchBoardDTO, MatchBoard.class);
	}
	
}
