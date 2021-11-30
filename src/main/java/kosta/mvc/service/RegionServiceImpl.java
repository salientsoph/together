package kosta.mvc.service;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import kosta.mvc.domain.Region;
import kosta.mvc.repository.RegionRepository;
import lombok.RequiredArgsConstructor;

@Service //create. id="noticeBoardServiceImpl"
@RequiredArgsConstructor 
@Transactional
public class RegionServiceImpl implements RegionService {

	private final RegionRepository regionRepository;
	
	@Override
	public List<Region> selectAll() {
		return regionRepository.findAll();
	}

}
