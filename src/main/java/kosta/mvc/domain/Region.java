package kosta.mvc.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Region {

	@Id
	private String regionName;
}
