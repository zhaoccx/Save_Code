package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExSyllabus;

/**
 * �γ� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface SyllabusDao {

	/**
	 * ������֤�γ��û��Ƿ�Ϸ�
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return ���ݿ��д�Ŀγ̶���
	 */
	public ExSyllabus getSyllabusdao(ExSyllabus Syllabus);

	/**
	 * ���ڻ�ÿγ̵ļ���
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return ���ݿ��д����ؿγ̶���ļ��ϡ�
	 */
	public Set<ExSyllabus> getSyllabussdao(ExSyllabus Syllabus);

	/**
	 * ���ڲ���γ̵����ݿ�
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertSyllabusdao(ExSyllabus Syllabus);

	/**
	 * ����ɾ�����ݿ�����صĿγ̶���
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteSyllabusdao(ExSyllabus Syllabus);

	/**
	 * ���ڸ��¿γ̵����ݿ�
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateSyllabusdao(ExSyllabus Syllabus);
}
