package qinyewei.service.Impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Favorite;
import entity.User;
import entity.Video;
import qinyewei.dao.UserDao;
import qinyewei.dao.VideoDao;
import qinyewei.service.VideoService;
@Service
public class VideoServiceImpl implements VideoService {
	@Autowired
	private VideoDao videoDao;
	
	@Override
	public List<Video> findVideo(Integer videoid){
		//将UserDao注入进来后，使用this进行调用
		List<Video> video=this.videoDao.findVideo(videoid);
		return video;
	}
	@Override
	public Video findoneVideo(Integer videoid) {
		Video video=this.videoDao.findoneVideo(videoid);
		return video;
	}
	@Override
	public List<Video> findVideofortype(Integer videoid) {
		List<Video> video=this.videoDao.findVideofortype(videoid);
		return video;
	}
	@Override
	public List<Favorite> findFavoriteVideo(String username) {
		List<Favorite> Favoritevideo=this.videoDao.findFavoriteVideo(username);
		return Favoritevideo;
	}
	@Override
	public List<Video> finduploaderVideo(String uploader) {
		List<Video> uploadervideo=this.videoDao.finduploaderVideo(uploader);
		return uploadervideo;
	}
	@Override
	public List<Video> findAllVideo() {
		List<Video> Allvideo=this.videoDao.findAllVideo();
		return Allvideo;
	}
	@Override
	public Integer deletVideo(Integer videoid) {
		Integer deletVideo=this.videoDao.deletVideo(videoid);
		return deletVideo;
	}
	@Override
	public List<Video> finduplikeVideo(String keywords) {
		List<Video> likeVideo=this.videoDao.finduplikeVideo(keywords);
		return likeVideo;
	}
	@Override
	public Integer addVideo(String videoname, String imgurl, String videourl, String type, String uploader,String date,int examine) {
		Integer addVideo=this.videoDao.addVideo(videoname, imgurl, videourl, type, uploader, date,examine);
		System.out.println("serviceuploader:"+uploader);
		return addVideo;
	}
	@Override
	public Integer addfVideo(Favorite favorite) {
		Integer addVideo=this.videoDao.addfVideo(favorite);
		return addVideo;
		
	}
	@Override
	public Integer deletefVideo(Integer Fld) {
		Integer deleteVideo=this.videoDao.deletefVideo(Fld);
		return deleteVideo;
	}
	@Override
	public Integer findoneFavoriteVideo(Favorite favorite) {
		Integer oneFavoritevideo=this.videoDao.findoneFavoriteVideo(favorite);
		return oneFavoritevideo;
	}
	@Override
	public Integer addVideoview(Integer videoid, Integer pageview) {
		Integer addVideoview=this.videoDao.addVideoview(videoid, pageview);
		return addVideoview;
	}
	@Override
	public List<Video> findVideoforexamine() {
		List<Video> findVideoforexamine=this.videoDao.findVideoforexamine();
		return findVideoforexamine;
	}
	@Override
	public int passvideo(Integer videoid) {
		int passvideo=this.videoDao.passvideo(videoid);
		return passvideo;
	}
	@Override
	public int goodvideo(Integer videoid, Integer favoriteAmount) {
		int goodvideo=this.videoDao.goodvideo(videoid, favoriteAmount);
		return goodvideo;
	}
	@Override
	public Integer deletefVideo2(Integer videoid) {
		int deletefVideo2=this.videoDao.deletefVideo2(videoid);
		return deletefVideo2;
	}
	@Override
	public List<Video> hotvideo() {
		List<Video> video=this.videoDao.hotvideo();
		return video;
	}

}
