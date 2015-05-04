package com.exam.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.exam.biz.ChoiceBiz;
import com.exam.biz.CompletionBiz;
import com.exam.biz.QuestionBiz;
import com.exam.biz.RecordBiz;
import com.exam.biz.ScoreBiz;
import com.exam.biz.StudentBiz;
import com.exam.biz.TorfBiz;
import com.exam.entity.ExChoice;
import com.exam.entity.ExCompletion;
import com.exam.entity.ExQuestion;
import com.exam.entity.ExRecord;
import com.exam.entity.ExScore;
import com.exam.entity.ExStudent;
import com.exam.entity.ExSyllabus;
import com.exam.entity.ExTorf;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 这个Action主要用于处理学生相关的请求
 * 
 * @author zhao
 * 
 */
@SuppressWarnings("serial")
public class StudentAction extends ActionSupport {

	private ExStudent student;
	private ExRecord record;
	private ExScore score;
	private ExSyllabus syllabus;
	private StudentBiz studentBiz;
	private RecordBiz recordBiz;
	private ScoreBiz scoreBiz;
	private ChoiceBiz choiceBiz;
	private CompletionBiz completionBiz;
	private TorfBiz torfBiz;
	private QuestionBiz questionBiz;
	int j = 0, jj = 0, jjj = 0;

	// 学生登录的方法
	@SuppressWarnings("unchecked")
	public String login() throws Exception {
		System.out.println(this.student.getStunum() + "  " + this.student.getStupass());
		ExStudent stus = this.studentBiz.getStudentbiz(this.student);
		if (null == stus) {
			return "fail";
		}
		// ExScore score=new ExScore();
		// score.setExStudent(stus);
		// List<ExScore> list=this.scoreBiz.getScoresbizList(score);
		Set<ExSyllabus> set = stus.getExStuSylls();
		List<ExSyllabus> list = new ArrayList<ExSyllabus>();
		for (ExSyllabus sy : set) {
			list.add(sy);
		}
		System.out.println(list.size() + "ooooooooooooooooooooooooooooooooooooo");
		ActionContext.getContext().getSession().put("user", stus);
		ActionContext.getContext().getSession().put("syllabus", list);
		return "success";
	}

	/**
	 * @return the score
	 */
	public ExScore getScore() {
		return score;
	}

	/**
	 * @param score
	 *            the score to set
	 */
	public void setScore(ExScore score) {
		this.score = score;
	}

	@SuppressWarnings("unchecked")
	public String examquest() throws Exception {
		System.out.println(this.student.getStuid() + "  fffffffffffffffffff    ");
		System.out.println(this.syllabus.getSyllname() + "  ooooooooooooooo  ");
		System.out.println(this.syllabus.getSyllid() + "   ppppppppppppppp   ");
		this.record = new ExRecord();
		this.record.setExStudent(this.student);
		this.record.setExSyllabus(this.syllabus);
		ExRecord cord = this.recordBiz.getRecordbiz(this.record);
		if (null == cord) {
			StringBuffer sBuffer = new StringBuffer();
			List<ExChoice> list = this.choiceBiz.getChoicesbizLists(syllabus);
			for (ExChoice cho : list) {
				sBuffer.append(cho.getChid()).append(",");
			}
			this.record.setRecchquest(sBuffer.toString().trim().substring(0, sBuffer.toString().trim().length() - 1));
			sBuffer = new StringBuffer();
			List<ExCompletion> list2 = this.completionBiz.getCompletionsbizLists(syllabus);
			for (ExCompletion exCompletion : list2) {
				sBuffer.append(exCompletion.getComid()).append(",");
			}
			this.record.setReccomquest(sBuffer.toString().trim().substring(0, sBuffer.toString().trim().length() - 1));
			sBuffer = new StringBuffer();
			List<ExTorf> list3 = this.torfBiz.getExTorfsbizLists(syllabus);
			for (ExTorf exTorf : list3) {
				sBuffer.append(exTorf.getTorfid()).append(",");
			}
			this.record.setRectorfquest(sBuffer.toString().trim().substring(0, sBuffer.toString().trim().length() - 1));
			sBuffer = new StringBuffer();
			List<ExQuestion> list4 = this.questionBiz.getQuestionsbizLists(syllabus);
			for (ExQuestion exQuestion : list4) {
				sBuffer.append(exQuestion.getQuestid()).append(",");
			}
			this.record.setRecququest(sBuffer.toString().trim().substring(0, sBuffer.toString().trim().length() - 1));
			this.recordBiz.insertRecordbiz(this.record);
			ActionContext.getContext().getSession().put("choice", list);
			ActionContext.getContext().getSession().put("completion", list2);
			ActionContext.getContext().getSession().put("torf", list3);
			ActionContext.getContext().getSession().put("question", list4);
			return "examss";
		}
		else {
			String[] string = cord.getRecchquest().split(",");
			List<ExChoice> list = new ArrayList<ExChoice>();
			for (int i = 0; i < string.length; i++) {
				ExChoice sChoice = new ExChoice();
				sChoice.setChid(Integer.valueOf(string[i]));
				list.add(this.choiceBiz.getChoicebiz(sChoice));
			}
			string = cord.getReccomquest().split(",");
			List<ExCompletion> list2 = new ArrayList<ExCompletion>();
			for (int i = 0; i < string.length; i++) {
				ExCompletion sChoice = new ExCompletion();
				sChoice.setComid(Integer.valueOf(string[i]));
				list2.add(this.completionBiz.getCompletionbiz(sChoice));
			}
			string = cord.getRectorfquest().split(",");
			List<ExTorf> list3 = new ArrayList<ExTorf>();
			for (int i = 0; i < string.length; i++) {
				ExTorf exTorf = new ExTorf();
				exTorf.setTorfid(Integer.valueOf(string[i]));
				list3.add(this.torfBiz.getTorfbiz(exTorf));
			}
			string = cord.getRecququest().split(",");
			List<ExQuestion> list4 = new ArrayList<ExQuestion>();
			for (int i = 0; i < string.length; i++) {
				ExQuestion question = new ExQuestion();
				question.setQuestid(Integer.valueOf(string[i]));
				list4.add(this.questionBiz.getQuestionbiz(question));
			}
			ActionContext.getContext().getSession().put("choice", list);
			ActionContext.getContext().getSession().put("completion", list2);
			ActionContext.getContext().getSession().put("torf", list3);
			ActionContext.getContext().getSession().put("question", list4);
			return "examss";
		}
	}

	@SuppressWarnings("unchecked")
	public String recordput() throws Exception {
		System.out.println(syllabus.getSyllid() + "      abcdkdfkdksladklkfkskld" + syllabus.getSyllname());
		System.out.println(student.getStuid());
		this.record.setExStudent(student);
		this.record.setExSyllabus(syllabus);
		System.out.println(this.record.getRecchvalue());
		System.out.println(this.record.getReccomvalue());
		System.out.println(this.record.getRectorfvalue());
		System.out.println(this.record.getRecquvalue());
		this.recordBiz.updateRecordbiz(record);// 更新答案。。。
		ExRecord exRecord = this.recordBiz.getRecordbiz(record);
		String[] strings = exRecord.getRecchquest().split(",");
		String[] strings2 = exRecord.getRecchvalue().split("\\[");
		for (int i = 0; i < strings.length; i++) {
			ExChoice SS = new ExChoice();
			SS.setChid(Integer.valueOf(strings[i]));
			if (strings2[i + 1].trim().substring(0, 1).equalsIgnoreCase(this.choiceBiz.getChoicebiz(SS).getChresult().trim())) {
				j += this.choiceBiz.getChoicebiz(SS).getChvalue();
			}
		}
		String[] sstrings = exRecord.getReccomquest().split(",");
		String[] sstrings2 = exRecord.getReccomvalue().split("\\[");
		for (int i = 0; i < sstrings.length; i++) {
			ExCompletion SS = new ExCompletion();
			SS.setComid(Integer.valueOf(strings[i]));
			if (sstrings2[i + 1].trim().substring(0, 1).equalsIgnoreCase(this.completionBiz.getCompletionbiz(SS).getComresult().trim())) {
				jj += this.completionBiz.getCompletionbiz(SS).getComvalue();
			}
		}
		String[] ssstrings = exRecord.getRectorfquest().split(",");
		String[] ssstrings2 = exRecord.getRectorfvalue().split("\\[");
		for (int i = 0; i < ssstrings.length; i++) {
			ExTorf SS = new ExTorf();
			SS.setTorfid(Integer.valueOf(strings[i]));
			if (ssstrings2[i + 1].trim().substring(0, 1).equalsIgnoreCase(this.torfBiz.getTorfbiz(SS).getTorfresult().trim())) {
				jjj += this.torfBiz.getTorfbiz(SS).getTorfvalue();
			}
		}
		score = new ExScore();
		score.setExStudent(student);
		score.setExSyllabus(syllabus);
		score.setScorech(j);
		score.setScorecom(jj);
		score.setScoretorf(jjj);
		score.setScoretotal(j + jj + jjj);
		ExScore corExScore = this.scoreBiz.getScorebiz(score);
		if (null == corExScore) {
			this.scoreBiz.insertScorebiz(score);
		}
		List<ExScore> list = this.scoreBiz.getScoresbizList(score);
		ActionContext.getContext().getSession().put("scored", list);
		return "scored";
	}

	/**
	 * @return the student
	 */
	public ExStudent getStudent() {
		return student;
	}

	/**
	 * @param student
	 *            the student to set
	 */
	public void setStudent(ExStudent student) {
		this.student = student;
	}

	/**
	 * @return the record
	 */
	public ExRecord getRecord() {
		return record;
	}

	/**
	 * @param record
	 *            the record to set
	 */
	public void setRecord(ExRecord record) {
		this.record = record;
	}

	/**
	 * @return the syllabus
	 */
	public ExSyllabus getSyllabus() {
		return syllabus;
	}

	/**
	 * @param syllabus
	 *            the syllabus to set
	 */
	public void setSyllabus(ExSyllabus syllabus) {
		this.syllabus = syllabus;
	}

	/**
	 * @return the studentBiz
	 */
	public StudentBiz getStudentBiz() {
		return studentBiz;
	}

	/**
	 * @param studentBiz
	 *            the studentBiz to set
	 */
	public void setStudentBiz(StudentBiz studentBiz) {
		this.studentBiz = studentBiz;
	}

	/**
	 * @return the recordBiz
	 */
	public RecordBiz getRecordBiz() {
		return recordBiz;
	}

	/**
	 * @param recordBiz
	 *            the recordBiz to set
	 */
	public void setRecordBiz(RecordBiz recordBiz) {
		this.recordBiz = recordBiz;
	}

	/**
	 * @return the scoreBiz
	 */
	public ScoreBiz getScoreBiz() {
		return scoreBiz;
	}

	/**
	 * @param scoreBiz
	 *            the scoreBiz to set
	 */
	public void setScoreBiz(ScoreBiz scoreBiz) {
		this.scoreBiz = scoreBiz;
	}

	/**
	 * @return the choiceBiz
	 */
	public ChoiceBiz getChoiceBiz() {
		return choiceBiz;
	}

	/**
	 * @param choiceBiz
	 *            the choiceBiz to set
	 */
	public void setChoiceBiz(ChoiceBiz choiceBiz) {
		this.choiceBiz = choiceBiz;
	}

	/**
	 * @return the completionBiz
	 */
	public CompletionBiz getCompletionBiz() {
		return completionBiz;
	}

	/**
	 * @param completionBiz
	 *            the completionBiz to set
	 */
	public void setCompletionBiz(CompletionBiz completionBiz) {
		this.completionBiz = completionBiz;
	}

	/**
	 * @return the torfBiz
	 */
	public TorfBiz getTorfBiz() {
		return torfBiz;
	}

	/**
	 * @param torfBiz
	 *            the torfBiz to set
	 */
	public void setTorfBiz(TorfBiz torfBiz) {
		this.torfBiz = torfBiz;
	}

	/**
	 * @return the questionBiz
	 */
	public QuestionBiz getQuestionBiz() {
		return questionBiz;
	}

	/**
	 * @param questionBiz
	 *            the questionBiz to set
	 */
	public void setQuestionBiz(QuestionBiz questionBiz) {
		this.questionBiz = questionBiz;
	}
}
