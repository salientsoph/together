package kosta.mvc.domain;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Region {

	@Id

	private int region_code;
	
	private String regionName;
	
	@OneToMany(mappedBy = "region", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<MatchBoard> matchBoardList;
	
	@OneToMany(mappedBy = "region", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<PlaceBoard> placeBoardList;
	
	@OneToMany(mappedBy = "region", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<Seller> sellerList;

	private String regionName;

}
