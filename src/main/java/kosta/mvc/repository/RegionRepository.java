package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Region;

public interface RegionRepository extends JpaRepository<Region, String> {

}
