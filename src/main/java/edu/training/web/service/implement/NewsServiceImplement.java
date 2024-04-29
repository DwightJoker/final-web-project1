package edu.training.web.service.implement;

import java.util.ArrayList;
import java.util.List;

import edu.training.web.bean.News;
import edu.training.web.service.NewsService;

public class NewsServiceImplement implements NewsService{

	@Override
	public List<News> lastNews() {
		List<News> news = new ArrayList<News>();
		
		news.add(new News("Новый рекорд Ньюрбургринга", "тайкан проехал за рекордное время.",
				"полный текст сюда","images/path_to_java_basic_course_image.jpg"));
		
		news.add(new News("Лимитированная версия Audi RS6", "выпустили RS6 с отсылкой к... .",
				"полный текст сюда","images/path_to_java_basic_course_image.jpg"));
		
		news.add(new News("Ноый 911 Dakar edition", "бездорожье на дорогом.",
				"полный текст сюда","images/path_to_java_basic_course_image.jpg"));
		
		return news;
	}

}
