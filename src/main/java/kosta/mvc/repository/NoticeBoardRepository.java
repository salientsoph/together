package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.NoticeBoard;

public interface NoticeBoardRepository extends JpaRepository<NoticeBoard, Long> {
	
	@Query("update NoticeBoard b set b.noticeCount = b.noticeCount+1 where b.noticeNo = ?1")
	@Modifying //ddl 혹은 dml 일때 꼭 넣어야함 
	int readnumUpdate(Long noticeNo);
}
