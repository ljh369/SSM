package qinyewei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Favorite;
import entity.Video;

public interface VideoDao {
	//ͨ��ID��ѯ��Ƶ��Ϣ
	public List<Video> findVideo(@Param("videoid")Integer videoid);
	//��ѯ������Ƶ��Ϣ
	public List<Video> findAllVideo();
	//�������Ͳ�ѯ��Ƶ��Ϣ
	public List<Video> findVideofortype(@Param("videoid")Integer videoid);
	//ͨ��ID��ѯ������Ƶ��Ϣ
	public Video findoneVideo(@Param("videoid")Integer videoid);
	//��ѯĳ���ߵ�������Ƶ��Ϣ
	public List<Video> finduploaderVideo(@Param("uploader")String uploader);
	//��ѯ�û��ղص���Ƶid
	public List<Favorite> findFavoriteVideo(@Param("username")String username);
	//��ѯ����ָ���û��ղص���Ƶ��Ϣ
	public Integer findoneFavoriteVideo(Favorite favorite);
	//ͨ��IDɾ��������Ƶ
	public Integer deletVideo(@Param("videoid")Integer videoid);
	//ģ����ѯ��Ƶ��Ϣ
	public List<Video> finduplikeVideo(@Param("keywords")String keywords);
	//����ϴ�����Ƶ��Ϣ
	public Integer addVideo(@Param("videoname")String videoname,@Param("imgurl")String imgurl,
			@Param("videourl")String videourl,@Param("type")String type,@Param("uploader")String uploader,@Param("date")String date,@Param("examine")int examine);
	//�����Ƶ���ղؼ�
	public Integer addfVideo(Favorite favorite);
	//���ղؼ�ɾ����Ƶ
	public Integer deletefVideo(@Param("FId")Integer Fld);
	//���ղؼ�ɾ����Ƶ
	public Integer deletefVideo2(@Param("videoid")Integer videoid);
	//���Ӳ�����
	public Integer addVideoview(@Param("videoid")Integer videoid,@Param("pageview")Integer pageview);
	//��ѯ����δ��˵���Ƶ��Ϣ
	public List<Video> findVideoforexamine();
	//���ͨ����Ƶ
	public int passvideo(@Param("videoid")Integer videoid);
	//����
	public int goodvideo(@Param("videoid")Integer videoid,@Param("favoriteAmount")Integer favoriteAmount);
	//���յ�����Ӵ�С��������ȡ����Ƶ����
	public List<Video> hotvideo();
}
