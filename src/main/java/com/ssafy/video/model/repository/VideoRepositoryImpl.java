package com.ssafy.video.model.repository;

import java.util.ArrayList;
import java.util.List;

import com.ssafy.video.model.dto.Video;

public class VideoRepositoryImpl implements VideoRepository {
	
	private static VideoRepository repo = new VideoRepositoryImpl();

	// 비디오 관리
	private List<Video> list = new ArrayList<>();
	
	private VideoRepositoryImpl() {
		// 리스트에 비디오 넣기.
	}
	
	@Override
	public List<Video> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Video selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertVideo(Video video) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateVideo(Video video) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteVideo(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateViewCnt(int id) {
		// TODO Auto-generated method stub

	}

}
