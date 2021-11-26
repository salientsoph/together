package kosta.mvc.domain;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Region {

	@Id
	private int regionCode;
	
	private String regionName;
	
	@OneToMany(mappedBy = "region", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<MatchBoard> matchBoardList;
	
	@OneToMany(mappedBy = "region", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<PlaceBoard> placeBoardList;
	
	@OneToMany(mappedBy = "region", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<Seller> sellerList;


}
