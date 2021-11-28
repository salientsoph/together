package kosta.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.ReportReasons;
import kosta.mvc.repository.ReportReasonsRepository;

@Service
public class ReportReasonsServiceImpl implements ReportReasonsService {

	@Autowired
	ReportReasonsRepository ReportReasonsRep;
	
	@Override
	public List<ReportReasons> selectAll() {
		List<ReportReasons> list = ReportReasonsRep.findAll();
		return list;
	}

}
