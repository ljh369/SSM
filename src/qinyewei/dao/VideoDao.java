package qinyewei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Favorite;
import entity.Video;

public interface VideoDao {
	//通过ID查询视频信息
	public List<Video> findVideo(@Param("videoid")Integer videoid);
	//查询所有视频信息
	public List<Video> findAllVideo();
	//根据类型查询视频信息
	public List<Video> findVideofortype(@Param("videoid")Integer videoid);
	//通过ID查询单个视频信息
	public Video findoneVideo(@Param("videoid")Integer videoid);
	//查询某作者的所有视频信息
	public List<Video> finduploaderVideo(@Param("uploader")String uploader);
	//查询用户收藏的视频id
	public List<Favorite> findFavoriteVideo(@Param("username")String username);
	//查询单个指定用户收藏的视频信息
	public Integer findoneFavoriteVideo(Favorite favorite);
	//通过ID删除单个视频
	public Integer deletVideo(@Param("videoid")Integer videoid);
	//模糊查询视频信息
	public List<Video> finduplikeVideo(@Param("keywords")String keywords);
	//添加上传的视频信息
	public Integer addVideo(@Param("videoname")String videoname,@Param("imgurl")String imgurl,
			@Param("videourl")String videourl,@Param("type")String type,@Param("uploader")String uploader,@Param("date")String date,@Param("examine")int examine);
	//添加视频至收藏夹
	public Integer addfVideo(Favorite favorite);
	//从收藏夹删除视频
	public Integer deletefVideo(@Param("FId")Integer Fld);
	//从收藏夹删除视频
	public Integer deletefVideo2(@Param("videoid")Integer videoid);
	//增加播放量
	public Integer addVideoview(@Param("videoid")Integer videoid,@Param("pageview")Integer pageview);
	//查询所有未审核的视频信息
	public List<Video> findVideoforexamine();
	//审核通过视频
	public int passvideo(@Param("videoid")Integer videoid);
	//点赞
	public int goodvideo(@Param("videoid")Integer videoid,@Param("favoriteAmount")Integer favoriteAmount);
	//按照点击量从大到小从数据中取出视频数据
	public List<Video> hotvideo();
}
