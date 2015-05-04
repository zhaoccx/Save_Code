package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExSyllabus;

/**
 * �γ� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface SyllabusBiz {

	/**
	 * ������֤�γ��û��Ƿ�Ϸ�
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return ���ݿ��д�Ŀγ̶���
	 */
	public ExSyllabus getSyllabusbiz(ExSyllabus Syllabus);

	/**
	 * ���ڻ�ÿγ̵ļ���
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return ���ݿ��д����ؿγ̶���ļ��ϡ�
	 */
	public Set<ExSyllabus> getSyllabussbiz(ExSyllabus Syllabus);

	/**
	 * ���ڲ���γ̵����ݿ�
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertSyllabusbiz(ExSyllabus Syllabus);

	/**
	 * ����ɾ�����ݿ�����صĿγ̶���
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteSyllabusbiz(ExSyllabus Syllabus);

	/**
	 * ���ڸ��¿γ̵����ݿ�
	 * 
	 * @param Syllabus
	 *            �γ̶���
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateSyllabusbiz(ExSyllabus Syllabus);
}
