package com.ssm.dto;

import java.util.ArrayList;
import java.util.List;

public class AaaExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AaaExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andStu_idIsNull() {
            addCriterion("stu_id is null");
            return (Criteria) this;
        }

        public Criteria andStu_idIsNotNull() {
            addCriterion("stu_id is not null");
            return (Criteria) this;
        }

        public Criteria andStu_idEqualTo(Integer value) {
            addCriterion("stu_id =", value, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idNotEqualTo(Integer value) {
            addCriterion("stu_id <>", value, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idGreaterThan(Integer value) {
            addCriterion("stu_id >", value, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_id >=", value, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idLessThan(Integer value) {
            addCriterion("stu_id <", value, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idLessThanOrEqualTo(Integer value) {
            addCriterion("stu_id <=", value, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idIn(List<Integer> values) {
            addCriterion("stu_id in", values, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idNotIn(List<Integer> values) {
            addCriterion("stu_id not in", values, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idBetween(Integer value1, Integer value2) {
            addCriterion("stu_id between", value1, value2, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_idNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_id not between", value1, value2, "stu_id");
            return (Criteria) this;
        }

        public Criteria andStu_noIsNull() {
            addCriterion("stu_no is null");
            return (Criteria) this;
        }

        public Criteria andStu_noIsNotNull() {
            addCriterion("stu_no is not null");
            return (Criteria) this;
        }

        public Criteria andStu_noEqualTo(String value) {
            addCriterion("stu_no =", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noNotEqualTo(String value) {
            addCriterion("stu_no <>", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noGreaterThan(String value) {
            addCriterion("stu_no >", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noGreaterThanOrEqualTo(String value) {
            addCriterion("stu_no >=", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noLessThan(String value) {
            addCriterion("stu_no <", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noLessThanOrEqualTo(String value) {
            addCriterion("stu_no <=", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noLike(String value) {
            addCriterion("stu_no like", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noNotLike(String value) {
            addCriterion("stu_no not like", value, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noIn(List<String> values) {
            addCriterion("stu_no in", values, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noNotIn(List<String> values) {
            addCriterion("stu_no not in", values, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noBetween(String value1, String value2) {
            addCriterion("stu_no between", value1, value2, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_noNotBetween(String value1, String value2) {
            addCriterion("stu_no not between", value1, value2, "stu_no");
            return (Criteria) this;
        }

        public Criteria andStu_nameIsNull() {
            addCriterion("stu_name is null");
            return (Criteria) this;
        }

        public Criteria andStu_nameIsNotNull() {
            addCriterion("stu_name is not null");
            return (Criteria) this;
        }

        public Criteria andStu_nameEqualTo(String value) {
            addCriterion("stu_name =", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameNotEqualTo(String value) {
            addCriterion("stu_name <>", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameGreaterThan(String value) {
            addCriterion("stu_name >", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameGreaterThanOrEqualTo(String value) {
            addCriterion("stu_name >=", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameLessThan(String value) {
            addCriterion("stu_name <", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameLessThanOrEqualTo(String value) {
            addCriterion("stu_name <=", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameLike(String value) {
            addCriterion("stu_name like", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameNotLike(String value) {
            addCriterion("stu_name not like", value, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameIn(List<String> values) {
            addCriterion("stu_name in", values, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameNotIn(List<String> values) {
            addCriterion("stu_name not in", values, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameBetween(String value1, String value2) {
            addCriterion("stu_name between", value1, value2, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_nameNotBetween(String value1, String value2) {
            addCriterion("stu_name not between", value1, value2, "stu_name");
            return (Criteria) this;
        }

        public Criteria andStu_sexIsNull() {
            addCriterion("stu_sex is null");
            return (Criteria) this;
        }

        public Criteria andStu_sexIsNotNull() {
            addCriterion("stu_sex is not null");
            return (Criteria) this;
        }

        public Criteria andStu_sexEqualTo(String value) {
            addCriterion("stu_sex =", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexNotEqualTo(String value) {
            addCriterion("stu_sex <>", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexGreaterThan(String value) {
            addCriterion("stu_sex >", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexGreaterThanOrEqualTo(String value) {
            addCriterion("stu_sex >=", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexLessThan(String value) {
            addCriterion("stu_sex <", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexLessThanOrEqualTo(String value) {
            addCriterion("stu_sex <=", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexLike(String value) {
            addCriterion("stu_sex like", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexNotLike(String value) {
            addCriterion("stu_sex not like", value, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexIn(List<String> values) {
            addCriterion("stu_sex in", values, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexNotIn(List<String> values) {
            addCriterion("stu_sex not in", values, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexBetween(String value1, String value2) {
            addCriterion("stu_sex between", value1, value2, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_sexNotBetween(String value1, String value2) {
            addCriterion("stu_sex not between", value1, value2, "stu_sex");
            return (Criteria) this;
        }

        public Criteria andStu_classIsNull() {
            addCriterion("stu_class is null");
            return (Criteria) this;
        }

        public Criteria andStu_classIsNotNull() {
            addCriterion("stu_class is not null");
            return (Criteria) this;
        }

        public Criteria andStu_classEqualTo(String value) {
            addCriterion("stu_class =", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classNotEqualTo(String value) {
            addCriterion("stu_class <>", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classGreaterThan(String value) {
            addCriterion("stu_class >", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classGreaterThanOrEqualTo(String value) {
            addCriterion("stu_class >=", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classLessThan(String value) {
            addCriterion("stu_class <", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classLessThanOrEqualTo(String value) {
            addCriterion("stu_class <=", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classLike(String value) {
            addCriterion("stu_class like", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classNotLike(String value) {
            addCriterion("stu_class not like", value, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classIn(List<String> values) {
            addCriterion("stu_class in", values, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classNotIn(List<String> values) {
            addCriterion("stu_class not in", values, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classBetween(String value1, String value2) {
            addCriterion("stu_class between", value1, value2, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_classNotBetween(String value1, String value2) {
            addCriterion("stu_class not between", value1, value2, "stu_class");
            return (Criteria) this;
        }

        public Criteria andStu_teacherIsNull() {
            addCriterion("stu_teacher is null");
            return (Criteria) this;
        }

        public Criteria andStu_teacherIsNotNull() {
            addCriterion("stu_teacher is not null");
            return (Criteria) this;
        }

        public Criteria andStu_teacherEqualTo(String value) {
            addCriterion("stu_teacher =", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherNotEqualTo(String value) {
            addCriterion("stu_teacher <>", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherGreaterThan(String value) {
            addCriterion("stu_teacher >", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherGreaterThanOrEqualTo(String value) {
            addCriterion("stu_teacher >=", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherLessThan(String value) {
            addCriterion("stu_teacher <", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherLessThanOrEqualTo(String value) {
            addCriterion("stu_teacher <=", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherLike(String value) {
            addCriterion("stu_teacher like", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherNotLike(String value) {
            addCriterion("stu_teacher not like", value, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherIn(List<String> values) {
            addCriterion("stu_teacher in", values, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherNotIn(List<String> values) {
            addCriterion("stu_teacher not in", values, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherBetween(String value1, String value2) {
            addCriterion("stu_teacher between", value1, value2, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_teacherNotBetween(String value1, String value2) {
            addCriterion("stu_teacher not between", value1, value2, "stu_teacher");
            return (Criteria) this;
        }

        public Criteria andStu_yearIsNull() {
            addCriterion("stu_year is null");
            return (Criteria) this;
        }

        public Criteria andStu_yearIsNotNull() {
            addCriterion("stu_year is not null");
            return (Criteria) this;
        }

        public Criteria andStu_yearEqualTo(String value) {
            addCriterion("stu_year =", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearNotEqualTo(String value) {
            addCriterion("stu_year <>", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearGreaterThan(String value) {
            addCriterion("stu_year >", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearGreaterThanOrEqualTo(String value) {
            addCriterion("stu_year >=", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearLessThan(String value) {
            addCriterion("stu_year <", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearLessThanOrEqualTo(String value) {
            addCriterion("stu_year <=", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearLike(String value) {
            addCriterion("stu_year like", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearNotLike(String value) {
            addCriterion("stu_year not like", value, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearIn(List<String> values) {
            addCriterion("stu_year in", values, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearNotIn(List<String> values) {
            addCriterion("stu_year not in", values, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearBetween(String value1, String value2) {
            addCriterion("stu_year between", value1, value2, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_yearNotBetween(String value1, String value2) {
            addCriterion("stu_year not between", value1, value2, "stu_year");
            return (Criteria) this;
        }

        public Criteria andStu_monthIsNull() {
            addCriterion("stu_month is null");
            return (Criteria) this;
        }

        public Criteria andStu_monthIsNotNull() {
            addCriterion("stu_month is not null");
            return (Criteria) this;
        }

        public Criteria andStu_monthEqualTo(String value) {
            addCriterion("stu_month =", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthNotEqualTo(String value) {
            addCriterion("stu_month <>", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthGreaterThan(String value) {
            addCriterion("stu_month >", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthGreaterThanOrEqualTo(String value) {
            addCriterion("stu_month >=", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthLessThan(String value) {
            addCriterion("stu_month <", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthLessThanOrEqualTo(String value) {
            addCriterion("stu_month <=", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthLike(String value) {
            addCriterion("stu_month like", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthNotLike(String value) {
            addCriterion("stu_month not like", value, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthIn(List<String> values) {
            addCriterion("stu_month in", values, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthNotIn(List<String> values) {
            addCriterion("stu_month not in", values, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthBetween(String value1, String value2) {
            addCriterion("stu_month between", value1, value2, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_monthNotBetween(String value1, String value2) {
            addCriterion("stu_month not between", value1, value2, "stu_month");
            return (Criteria) this;
        }

        public Criteria andStu_dayIsNull() {
            addCriterion("stu_day is null");
            return (Criteria) this;
        }

        public Criteria andStu_dayIsNotNull() {
            addCriterion("stu_day is not null");
            return (Criteria) this;
        }

        public Criteria andStu_dayEqualTo(String value) {
            addCriterion("stu_day =", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayNotEqualTo(String value) {
            addCriterion("stu_day <>", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayGreaterThan(String value) {
            addCriterion("stu_day >", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayGreaterThanOrEqualTo(String value) {
            addCriterion("stu_day >=", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayLessThan(String value) {
            addCriterion("stu_day <", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayLessThanOrEqualTo(String value) {
            addCriterion("stu_day <=", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayLike(String value) {
            addCriterion("stu_day like", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayNotLike(String value) {
            addCriterion("stu_day not like", value, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayIn(List<String> values) {
            addCriterion("stu_day in", values, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayNotIn(List<String> values) {
            addCriterion("stu_day not in", values, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayBetween(String value1, String value2) {
            addCriterion("stu_day between", value1, value2, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_dayNotBetween(String value1, String value2) {
            addCriterion("stu_day not between", value1, value2, "stu_day");
            return (Criteria) this;
        }

        public Criteria andStu_eductionIsNull() {
            addCriterion("stu_eduction is null");
            return (Criteria) this;
        }

        public Criteria andStu_eductionIsNotNull() {
            addCriterion("stu_eduction is not null");
            return (Criteria) this;
        }

        public Criteria andStu_eductionEqualTo(String value) {
            addCriterion("stu_eduction =", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionNotEqualTo(String value) {
            addCriterion("stu_eduction <>", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionGreaterThan(String value) {
            addCriterion("stu_eduction >", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionGreaterThanOrEqualTo(String value) {
            addCriterion("stu_eduction >=", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionLessThan(String value) {
            addCriterion("stu_eduction <", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionLessThanOrEqualTo(String value) {
            addCriterion("stu_eduction <=", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionLike(String value) {
            addCriterion("stu_eduction like", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionNotLike(String value) {
            addCriterion("stu_eduction not like", value, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionIn(List<String> values) {
            addCriterion("stu_eduction in", values, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionNotIn(List<String> values) {
            addCriterion("stu_eduction not in", values, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionBetween(String value1, String value2) {
            addCriterion("stu_eduction between", value1, value2, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_eductionNotBetween(String value1, String value2) {
            addCriterion("stu_eduction not between", value1, value2, "stu_eduction");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberIsNull() {
            addCriterion("stu_idnumber is null");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberIsNotNull() {
            addCriterion("stu_idnumber is not null");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberEqualTo(Integer value) {
            addCriterion("stu_idnumber =", value, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberNotEqualTo(Integer value) {
            addCriterion("stu_idnumber <>", value, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberGreaterThan(Integer value) {
            addCriterion("stu_idnumber >", value, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_idnumber >=", value, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberLessThan(Integer value) {
            addCriterion("stu_idnumber <", value, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberLessThanOrEqualTo(Integer value) {
            addCriterion("stu_idnumber <=", value, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberIn(List<Integer> values) {
            addCriterion("stu_idnumber in", values, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberNotIn(List<Integer> values) {
            addCriterion("stu_idnumber not in", values, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberBetween(Integer value1, Integer value2) {
            addCriterion("stu_idnumber between", value1, value2, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_idnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_idnumber not between", value1, value2, "stu_idnumber");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolIsNull() {
            addCriterion("stu_graschool is null");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolIsNotNull() {
            addCriterion("stu_graschool is not null");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolEqualTo(String value) {
            addCriterion("stu_graschool =", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolNotEqualTo(String value) {
            addCriterion("stu_graschool <>", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolGreaterThan(String value) {
            addCriterion("stu_graschool >", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolGreaterThanOrEqualTo(String value) {
            addCriterion("stu_graschool >=", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolLessThan(String value) {
            addCriterion("stu_graschool <", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolLessThanOrEqualTo(String value) {
            addCriterion("stu_graschool <=", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolLike(String value) {
            addCriterion("stu_graschool like", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolNotLike(String value) {
            addCriterion("stu_graschool not like", value, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolIn(List<String> values) {
            addCriterion("stu_graschool in", values, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolNotIn(List<String> values) {
            addCriterion("stu_graschool not in", values, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolBetween(String value1, String value2) {
            addCriterion("stu_graschool between", value1, value2, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_graschoolNotBetween(String value1, String value2) {
            addCriterion("stu_graschool not between", value1, value2, "stu_graschool");
            return (Criteria) this;
        }

        public Criteria andStu_majorIsNull() {
            addCriterion("stu_major is null");
            return (Criteria) this;
        }

        public Criteria andStu_majorIsNotNull() {
            addCriterion("stu_major is not null");
            return (Criteria) this;
        }

        public Criteria andStu_majorEqualTo(String value) {
            addCriterion("stu_major =", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorNotEqualTo(String value) {
            addCriterion("stu_major <>", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorGreaterThan(String value) {
            addCriterion("stu_major >", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorGreaterThanOrEqualTo(String value) {
            addCriterion("stu_major >=", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorLessThan(String value) {
            addCriterion("stu_major <", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorLessThanOrEqualTo(String value) {
            addCriterion("stu_major <=", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorLike(String value) {
            addCriterion("stu_major like", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorNotLike(String value) {
            addCriterion("stu_major not like", value, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorIn(List<String> values) {
            addCriterion("stu_major in", values, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorNotIn(List<String> values) {
            addCriterion("stu_major not in", values, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorBetween(String value1, String value2) {
            addCriterion("stu_major between", value1, value2, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_majorNotBetween(String value1, String value2) {
            addCriterion("stu_major not between", value1, value2, "stu_major");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneIsNull() {
            addCriterion("stu_telphone is null");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneIsNotNull() {
            addCriterion("stu_telphone is not null");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneEqualTo(Integer value) {
            addCriterion("stu_telphone =", value, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneNotEqualTo(Integer value) {
            addCriterion("stu_telphone <>", value, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneGreaterThan(Integer value) {
            addCriterion("stu_telphone >", value, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_telphone >=", value, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneLessThan(Integer value) {
            addCriterion("stu_telphone <", value, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneLessThanOrEqualTo(Integer value) {
            addCriterion("stu_telphone <=", value, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneIn(List<Integer> values) {
            addCriterion("stu_telphone in", values, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneNotIn(List<Integer> values) {
            addCriterion("stu_telphone not in", values, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneBetween(Integer value1, Integer value2) {
            addCriterion("stu_telphone between", value1, value2, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_telphoneNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_telphone not between", value1, value2, "stu_telphone");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberIsNull() {
            addCriterion("stu_qqnumber is null");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberIsNotNull() {
            addCriterion("stu_qqnumber is not null");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberEqualTo(Integer value) {
            addCriterion("stu_qqnumber =", value, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberNotEqualTo(Integer value) {
            addCriterion("stu_qqnumber <>", value, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberGreaterThan(Integer value) {
            addCriterion("stu_qqnumber >", value, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_qqnumber >=", value, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberLessThan(Integer value) {
            addCriterion("stu_qqnumber <", value, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberLessThanOrEqualTo(Integer value) {
            addCriterion("stu_qqnumber <=", value, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberIn(List<Integer> values) {
            addCriterion("stu_qqnumber in", values, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberNotIn(List<Integer> values) {
            addCriterion("stu_qqnumber not in", values, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberBetween(Integer value1, Integer value2) {
            addCriterion("stu_qqnumber between", value1, value2, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_qqnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_qqnumber not between", value1, value2, "stu_qqnumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberIsNull() {
            addCriterion("stu_homenumber is null");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberIsNotNull() {
            addCriterion("stu_homenumber is not null");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberEqualTo(Integer value) {
            addCriterion("stu_homenumber =", value, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberNotEqualTo(Integer value) {
            addCriterion("stu_homenumber <>", value, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberGreaterThan(Integer value) {
            addCriterion("stu_homenumber >", value, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_homenumber >=", value, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberLessThan(Integer value) {
            addCriterion("stu_homenumber <", value, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberLessThanOrEqualTo(Integer value) {
            addCriterion("stu_homenumber <=", value, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberIn(List<Integer> values) {
            addCriterion("stu_homenumber in", values, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberNotIn(List<Integer> values) {
            addCriterion("stu_homenumber not in", values, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberBetween(Integer value1, Integer value2) {
            addCriterion("stu_homenumber between", value1, value2, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_homenumberNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_homenumber not between", value1, value2, "stu_homenumber");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityIsNull() {
            addCriterion("stu_addresscity is null");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityIsNotNull() {
            addCriterion("stu_addresscity is not null");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityEqualTo(String value) {
            addCriterion("stu_addresscity =", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityNotEqualTo(String value) {
            addCriterion("stu_addresscity <>", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityGreaterThan(String value) {
            addCriterion("stu_addresscity >", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityGreaterThanOrEqualTo(String value) {
            addCriterion("stu_addresscity >=", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityLessThan(String value) {
            addCriterion("stu_addresscity <", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityLessThanOrEqualTo(String value) {
            addCriterion("stu_addresscity <=", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityLike(String value) {
            addCriterion("stu_addresscity like", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityNotLike(String value) {
            addCriterion("stu_addresscity not like", value, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityIn(List<String> values) {
            addCriterion("stu_addresscity in", values, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityNotIn(List<String> values) {
            addCriterion("stu_addresscity not in", values, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityBetween(String value1, String value2) {
            addCriterion("stu_addresscity between", value1, value2, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscityNotBetween(String value1, String value2) {
            addCriterion("stu_addresscity not between", value1, value2, "stu_addresscity");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailIsNull() {
            addCriterion("stu_addresscitydetail is null");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailIsNotNull() {
            addCriterion("stu_addresscitydetail is not null");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailEqualTo(String value) {
            addCriterion("stu_addresscitydetail =", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailNotEqualTo(String value) {
            addCriterion("stu_addresscitydetail <>", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailGreaterThan(String value) {
            addCriterion("stu_addresscitydetail >", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailGreaterThanOrEqualTo(String value) {
            addCriterion("stu_addresscitydetail >=", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailLessThan(String value) {
            addCriterion("stu_addresscitydetail <", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailLessThanOrEqualTo(String value) {
            addCriterion("stu_addresscitydetail <=", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailLike(String value) {
            addCriterion("stu_addresscitydetail like", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailNotLike(String value) {
            addCriterion("stu_addresscitydetail not like", value, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailIn(List<String> values) {
            addCriterion("stu_addresscitydetail in", values, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailNotIn(List<String> values) {
            addCriterion("stu_addresscitydetail not in", values, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailBetween(String value1, String value2) {
            addCriterion("stu_addresscitydetail between", value1, value2, "stu_addresscitydetail");
            return (Criteria) this;
        }

        public Criteria andStu_addresscitydetailNotBetween(String value1, String value2) {
            addCriterion("stu_addresscitydetail not between", value1, value2, "stu_addresscitydetail");
            return (Criteria) this;
        }
    }

    /**
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}