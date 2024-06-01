package qinyewei.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Favorite;
import entity.Video;

public interface VideoService {

	public List<Video> findVideo(Integer videoid);
	
	public List<Video> findAllVideo();
	
	public Video findoneVideo(Integer videoid);
	
	public List<Video> findVideofortype(Integer videoid);
	
	public List<Favorite> findFavoriteVideo(String username);
	
	public Integer findoneFavoriteVideo(Favorite favorite);
	
	public List<Video> finduploaderVideo(String uploader);
	//模糊查询视频信息
	public List<Video> finduplikeVideo(String keywords);
	//通过ID删除单个视频
	public Integer deletVideo(Integer videoid);
	//添加上传的视频信息
	public Integer addVideo(String videoname,String imgurl,
	String videourl,String type,String uploader,String date,int examine);
	//添加视频至收藏夹
	public Integer addfVideo(Favorite favorite);
	//从收藏夹中删除视频
	public Integer deletefVideo(Integer Fld);
	//增加播放量
	public Integer addVideoview(Integer videoid,Integer pageview);
	//查询所有未审核的视频信息
	public List<Video> findVideoforexamine();
	//审核通过视频
	public int passvideo(Integer videoid);
	//点赞
	public int goodvideo(Integer videoid,Integer favoriteAmount);
	//从收藏夹删除视频
	public Integer deletefVideo2(Integer videoid);
	//按照点击量从大到小从数据中取出视频数据
	public List<Video> hotvideo();
}
