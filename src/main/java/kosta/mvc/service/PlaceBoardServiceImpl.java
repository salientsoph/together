package kosta.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Report;
import kosta.mvc.repository.PlaceBoardRepository;
import lombok.RequiredArgsConstructor;



@Service //create. id="placeBoardServiceImpl"
@RequiredArgsConstructor 
@Transactional
public class PlaceBoardServiceImpl implements PlaceBoardService {

	private final PlaceBoardRepository placeRepository;

	
	@Override
	public List<PlaceBoard> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<PlaceBoard> selectAll(Pageable pageable) {
		return placeRepository.findAll(pageable);
	}

	@Override
	public void insert(PlaceBoard placeBoard) {
		placeRepository.save(placeBoard);
	}

	@Override
	public PlaceBoard selectBy(Long bno, boolean state) {
		//검색해서 return 
		PlaceBoard placeBoard = placeRepository.findById(bno).orElse(null);
	     System.out.println("placeBoard = " + placeBoard);
		
		if(placeBoard==null) {
			throw new RuntimeException(bno + " 번호 오류로 입니다. ");
			
		}
				
		if(state) {
			placeBoard.setPlaceCount(placeBoard.getPlaceCount()+1);
		}
		
		return placeBoard;
	}

	@Override
	public PlaceBoard update(PlaceBoard placeBoard) {
		PlaceBoard board = placeRepository.findById(placeBoard.getPlaceNo()).orElse(null);
		if(board == null) throw new RuntimeException("글 번호 오류로 수정될 수 없습니다.");
		board.setPlaceContent(placeBoard.getPlaceContent().replace("<", "&lt;"));
		board.setPlaceTitle(placeBoard.getPlaceTitle());
		return board;
	}

	@Override
	public void delete(Long placeNo) {
		PlaceBoard placeBoard = placeRepository.findById(placeNo).orElse(null);
		if(placeBoard == null)
			throw new RuntimeException("글번호 오류로 삭제할 수 없어요.");
		placeRepository.delete(placeBoard);

	}

	@Override
	public Page<PlaceBoard> selectByPlaceCategory(int placeCategory, Region region, Pageable pageable) {
		Page<PlaceBoard> list = placeRepository.findByPlaceCategoryAndRegion(placeCategory, region, pageable);
		return list;
	}


}
