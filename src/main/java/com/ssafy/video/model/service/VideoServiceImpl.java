package com.ssafy.video.model.service;

import java.util.List;

import com.ssafy.video.model.dto.Video;
import com.ssafy.video.model.repository.VideoRepository;
import com.ssafy.video.model.repository.VideoRepositoryImpl;

public class VideoServiceImpl implements VideoService {

	private static VideoService service = new VideoServiceImpl();
	private VideoRepository videos = VideoRepositoryImpl.getInstance();
	
	private VideoServiceImpl() {
	}	
	
	public static VideoService getInstance() {
		return service;
	}
	
	@Override
	public List<Video> getList() {
		return videos.selectAll();
	}

	@Override
	public Video getVideo(int id) {
		return videos.selectOne(id);
	}

}
