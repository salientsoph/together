package kosta.mvc.service;

import java.time.LocalDate;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.repository.MatchBoardRepository;
import lombok.RequiredArgsConstructor;


@Service //생성. id="matchBoardServiceImpl"
@RequiredArgsConstructor 
@Transactional
public class MatchBoardServiceImpl implements MatchBoardService {

	private final MatchBoardRepository matchRepository;
	
	//전체 검색 
	@Override
	public List<MatchBoard> selectAll() {
		return null;
	}

	//페이징 처리
	@Override
	public Page<MatchBoard> selectAll(Pageable pageable) {
		return matchRepository.findAll(pageable);
	}

	//게시물 등록 
	@Override
	public void insert(MatchBoard board) {
		MatchBoard mb = matchRepository.save(board);
		System.out.println(mb.getMatchNo() + " | " + mb.getMatchTitle());
	}

	//개별 게시물 조회 (+ 조회수 증가) 
	@Override
	public MatchBoard selectBy(Long matchNo, boolean state) {
		if(state) {
			//조회수 증가 
			if(matchRepository.readnumUpdate(matchNo) == 0) {
				throw new RuntimeException(matchNo + " 번호 오류로 조회수 증가 실패하여 검색할 수 없어요. ");
			}
		}
		//검색해서 return 
		MatchBoard matchBoard = matchRepository.findById(matchNo).orElse(null);
		return matchBoard;
	}

	//게시물 수정하기
	@Override
	public MatchBoard update(MatchBoard board) {
		MatchBoard matchBoard = matchRepository.findById(board.getMatchNo()).orElse(null);
		if(matchBoard == null) throw new RuntimeException("글 번호 오류로 수정할 수 없습니다.");
	
		matchBoard.setMatchTitle(board.getMatchTitle());
		matchBoard.setMatchContent(board.getMatchContent().replace("<", "&lt;"));
		matchBoard.setMatchGender(board.getMatchGender());
		matchBoard.setMatchAgeGroup(board.getMatchAgeGroup());
		matchBoard.setMatchPeopleNum(board.getMatchPeopleNum());
		matchBoard.setMatchRequestLastDate(board.getMatchRequestLastDate());
		matchBoard.setRegion(board.getRegion());
		matchBoard.setTripDate(board.getTripDate());
		
		return matchBoard;
	}

	//게시물 삭제하기 
	@Override
	public void delete(Long matchNo) {
		MatchBoard matchBoard = matchRepository.findById(matchNo).orElse(null);
		if(matchBoard == null)
			throw new RuntimeException("글번호 오류로 삭제할 수 없어요.");
		matchRepository.delete(matchBoard);
	}
	
	
	//게시물 검색 
	@Override
	public List<MatchBoard> selectByMatchGender(int matchGender){
		MatchBoard matchBoard = matchRepository.findById(null).orElse(null);
		List<MatchBoard> list;
		return null;
	}

	@Override
	public List<MatchBoard> selectByRegionAndDate(int region, LocalDate date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<MatchBoard> selectByRegionAndDate(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

}
