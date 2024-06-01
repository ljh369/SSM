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
	//ģ����ѯ��Ƶ��Ϣ
	public List<Video> finduplikeVideo(String keywords);
	//ͨ��IDɾ��������Ƶ
	public Integer deletVideo(Integer videoid);
	//����ϴ�����Ƶ��Ϣ
	public Integer addVideo(String videoname,String imgurl,
	String videourl,String type,String uploader,String date,int examine);
	//�����Ƶ���ղؼ�
	public Integer addfVideo(Favorite favorite);
	//���ղؼ���ɾ����Ƶ
	public Integer deletefVideo(Integer Fld);
	//���Ӳ�����
	public Integer addVideoview(Integer videoid,Integer pageview);
	//��ѯ����δ��˵���Ƶ��Ϣ
	public List<Video> findVideoforexamine();
	//���ͨ����Ƶ
	public int passvideo(Integer videoid);
	//����
	public int goodvideo(Integer videoid,Integer favoriteAmount);
	//���ղؼ�ɾ����Ƶ
	public Integer deletefVideo2(Integer videoid);
	//���յ�����Ӵ�С��������ȡ����Ƶ����
	public List<Video> hotvideo();
}
