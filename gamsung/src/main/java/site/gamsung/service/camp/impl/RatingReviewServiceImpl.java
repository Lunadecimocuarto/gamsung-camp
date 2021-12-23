package site.gamsung.service.camp.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import site.gamsung.service.camp.CampRatingReviewDAO;
import site.gamsung.service.common.RatingReviewService;
import site.gamsung.service.common.Search;
import site.gamsung.service.domain.RatingReview;

@Service("ratingReviewServiceImpl")
public class RatingReviewServiceImpl implements RatingReviewService {

	@Autowired
	@Qualifier("campRatingReviewDAOImpl")
	private CampRatingReviewDAO campRatingReviewDAO;
	
	public void setCampRatingReviewDAO(CampRatingReviewDAO campRatingReviewDAO) {
		this.campRatingReviewDAO = campRatingReviewDAO;
	}

	public RatingReviewServiceImpl() {
		System.out.println(this.getClass());
	}
	

	@Override
	public void addRatingReview(RatingReview ratingReview) throws Exception {
	
		
	}

	@Override
	public Map<String, Object> listRatingReview(Search search, int targetNo) throws Exception {
		
		Map<String, Object> requestMap = new HashMap<String, Object>();
		requestMap.put("search", search);
		requestMap.put("campNo", targetNo);
		
		List<RatingReview> list = campRatingReviewDAO.listCampRatingReview(requestMap);
		int totalCount = campRatingReviewDAO.getTotalCount(requestMap);
		
		Map<String, Object> responseMap = new HashMap<String, Object>();
		responseMap.put("list", list);
		responseMap.put("totalCount", totalCount);
		
		return responseMap;
	}

	@Override
	public RatingReview getRatingReview(int ratingReviewNo) throws Exception {

		return null;
	}

	@Override
	public void updateRatingReview(int ratingReviewNo) throws Exception {

		
	}

	@Override
	public void deleteRatingReview(int ratingReviewNo) throws Exception {

		
	}
	
}
