package kosta.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.NoticeBoard;
import kosta.mvc.repository.NoticeBoardRepository;
import lombok.RequiredArgsConstructor;

@Service //create. id="noticeBoardServiceImpl"
@RequiredArgsConstructor 
@Transactional
public class NoticeBoardServiceImpl implements NoticeBoardService {

	private final NoticeBoardRepository noticeRepository; 
	
	@Override
	public List<NoticeBoard> selectAll() {
		return noticeRepository.findAll();
	}

	@Override
	public Page<NoticeBoard> selectAll(Pageable pageable) {
		return noticeRepository.findAll(pageable);
	}

	@Override
	public void insert(NoticeBoard noticeBoard) {
		NoticeBoard nb = noticeRepository.save(noticeBoard);
		System.out.println(nb.getNoticeNo() + " | " + nb.getNoticeTitle());
	}

	@Override
	public NoticeBoard selectBy(Long bno, boolean state) {
		if(state) {
			if(noticeRepository.readnumUpdate(bno) == 0) {
				throw new RuntimeException(bno + " 번호 오류로 조회수 증가 실패하여 검색할 수 없어요. ");
			}
		}
		//검색해서 return 
		NoticeBoard noticeBoard = noticeRepository.findById(bno).orElse(null);
		return noticeBoard;
	}

	@Override
	public NoticeBoard update(NoticeBoard noticeBoard) {
		NoticeBoard board = noticeRepository.findById(noticeBoard.getNoticeNo()).orElse(null);
		if(board == null) throw new RuntimeException("글 번호 오류로 수정될 수 없습니다.");
		board.setNoticeContent(noticeBoard.getNoticeContent().replace("<", "&lt;"));
		board.setNoticeTitle(noticeBoard.getNoticeTitle());
		return board;
	}
	

	@Override
	public void delete(Long noticeNo) {
		NoticeBoard noticeBoard = noticeRepository.findById(noticeNo).orElse(null);
		if(noticeBoard == null)
			throw new RuntimeException("글번호 오류로 삭제할 수 없어요.");
		noticeRepository.delete(noticeBoard);
	}


}
