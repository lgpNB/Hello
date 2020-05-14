package com.haina.shop.bean;

import java.util.ArrayList;
import java.util.List;

public class ShopExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ShopExample() {
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

        public Criteria andShopIdIsNull() {
            addCriterion("shop_id is null");
            return (Criteria) this;
        }

        public Criteria andShopIdIsNotNull() {
            addCriterion("shop_id is not null");
            return (Criteria) this;
        }

        public Criteria andShopIdEqualTo(Integer value) {
            addCriterion("shop_id =", value, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdNotEqualTo(Integer value) {
            addCriterion("shop_id <>", value, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdGreaterThan(Integer value) {
            addCriterion("shop_id >", value, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("shop_id >=", value, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdLessThan(Integer value) {
            addCriterion("shop_id <", value, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdLessThanOrEqualTo(Integer value) {
            addCriterion("shop_id <=", value, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdIn(List<Integer> values) {
            addCriterion("shop_id in", values, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdNotIn(List<Integer> values) {
            addCriterion("shop_id not in", values, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdBetween(Integer value1, Integer value2) {
            addCriterion("shop_id between", value1, value2, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopIdNotBetween(Integer value1, Integer value2) {
            addCriterion("shop_id not between", value1, value2, "shopId");
            return (Criteria) this;
        }

        public Criteria andShopNameIsNull() {
            addCriterion("shop_name is null");
            return (Criteria) this;
        }

        public Criteria andShopNameIsNotNull() {
            addCriterion("shop_name is not null");
            return (Criteria) this;
        }

        public Criteria andShopNameEqualTo(String value) {
            addCriterion("shop_name =", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameNotEqualTo(String value) {
            addCriterion("shop_name <>", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameGreaterThan(String value) {
            addCriterion("shop_name >", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameGreaterThanOrEqualTo(String value) {
            addCriterion("shop_name >=", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameLessThan(String value) {
            addCriterion("shop_name <", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameLessThanOrEqualTo(String value) {
            addCriterion("shop_name <=", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameLike(String value) {
            addCriterion("shop_name like", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameNotLike(String value) {
            addCriterion("shop_name not like", value, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameIn(List<String> values) {
            addCriterion("shop_name in", values, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameNotIn(List<String> values) {
            addCriterion("shop_name not in", values, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameBetween(String value1, String value2) {
            addCriterion("shop_name between", value1, value2, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopNameNotBetween(String value1, String value2) {
            addCriterion("shop_name not between", value1, value2, "shopName");
            return (Criteria) this;
        }

        public Criteria andShopTypeIsNull() {
            addCriterion("shop_type is null");
            return (Criteria) this;
        }

        public Criteria andShopTypeIsNotNull() {
            addCriterion("shop_type is not null");
            return (Criteria) this;
        }

        public Criteria andShopTypeEqualTo(String value) {
            addCriterion("shop_type =", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeNotEqualTo(String value) {
            addCriterion("shop_type <>", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeGreaterThan(String value) {
            addCriterion("shop_type >", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeGreaterThanOrEqualTo(String value) {
            addCriterion("shop_type >=", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeLessThan(String value) {
            addCriterion("shop_type <", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeLessThanOrEqualTo(String value) {
            addCriterion("shop_type <=", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeLike(String value) {
            addCriterion("shop_type like", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeNotLike(String value) {
            addCriterion("shop_type not like", value, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeIn(List<String> values) {
            addCriterion("shop_type in", values, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeNotIn(List<String> values) {
            addCriterion("shop_type not in", values, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeBetween(String value1, String value2) {
            addCriterion("shop_type between", value1, value2, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopTypeNotBetween(String value1, String value2) {
            addCriterion("shop_type not between", value1, value2, "shopType");
            return (Criteria) this;
        }

        public Criteria andShopBossIsNull() {
            addCriterion("shop_boss is null");
            return (Criteria) this;
        }

        public Criteria andShopBossIsNotNull() {
            addCriterion("shop_boss is not null");
            return (Criteria) this;
        }

        public Criteria andShopBossEqualTo(String value) {
            addCriterion("shop_boss =", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossNotEqualTo(String value) {
            addCriterion("shop_boss <>", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossGreaterThan(String value) {
            addCriterion("shop_boss >", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossGreaterThanOrEqualTo(String value) {
            addCriterion("shop_boss >=", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossLessThan(String value) {
            addCriterion("shop_boss <", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossLessThanOrEqualTo(String value) {
            addCriterion("shop_boss <=", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossLike(String value) {
            addCriterion("shop_boss like", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossNotLike(String value) {
            addCriterion("shop_boss not like", value, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossIn(List<String> values) {
            addCriterion("shop_boss in", values, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossNotIn(List<String> values) {
            addCriterion("shop_boss not in", values, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossBetween(String value1, String value2) {
            addCriterion("shop_boss between", value1, value2, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopBossNotBetween(String value1, String value2) {
            addCriterion("shop_boss not between", value1, value2, "shopBoss");
            return (Criteria) this;
        }

        public Criteria andShopEmailIsNull() {
            addCriterion("shop_email is null");
            return (Criteria) this;
        }

        public Criteria andShopEmailIsNotNull() {
            addCriterion("shop_email is not null");
            return (Criteria) this;
        }

        public Criteria andShopEmailEqualTo(String value) {
            addCriterion("shop_email =", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailNotEqualTo(String value) {
            addCriterion("shop_email <>", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailGreaterThan(String value) {
            addCriterion("shop_email >", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailGreaterThanOrEqualTo(String value) {
            addCriterion("shop_email >=", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailLessThan(String value) {
            addCriterion("shop_email <", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailLessThanOrEqualTo(String value) {
            addCriterion("shop_email <=", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailLike(String value) {
            addCriterion("shop_email like", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailNotLike(String value) {
            addCriterion("shop_email not like", value, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailIn(List<String> values) {
            addCriterion("shop_email in", values, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailNotIn(List<String> values) {
            addCriterion("shop_email not in", values, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailBetween(String value1, String value2) {
            addCriterion("shop_email between", value1, value2, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopEmailNotBetween(String value1, String value2) {
            addCriterion("shop_email not between", value1, value2, "shopEmail");
            return (Criteria) this;
        }

        public Criteria andShopTelIsNull() {
            addCriterion("shop_tel is null");
            return (Criteria) this;
        }

        public Criteria andShopTelIsNotNull() {
            addCriterion("shop_tel is not null");
            return (Criteria) this;
        }

        public Criteria andShopTelEqualTo(String value) {
            addCriterion("shop_tel =", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelNotEqualTo(String value) {
            addCriterion("shop_tel <>", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelGreaterThan(String value) {
            addCriterion("shop_tel >", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelGreaterThanOrEqualTo(String value) {
            addCriterion("shop_tel >=", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelLessThan(String value) {
            addCriterion("shop_tel <", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelLessThanOrEqualTo(String value) {
            addCriterion("shop_tel <=", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelLike(String value) {
            addCriterion("shop_tel like", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelNotLike(String value) {
            addCriterion("shop_tel not like", value, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelIn(List<String> values) {
            addCriterion("shop_tel in", values, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelNotIn(List<String> values) {
            addCriterion("shop_tel not in", values, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelBetween(String value1, String value2) {
            addCriterion("shop_tel between", value1, value2, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopTelNotBetween(String value1, String value2) {
            addCriterion("shop_tel not between", value1, value2, "shopTel");
            return (Criteria) this;
        }

        public Criteria andShopAddressIsNull() {
            addCriterion("shop_address is null");
            return (Criteria) this;
        }

        public Criteria andShopAddressIsNotNull() {
            addCriterion("shop_address is not null");
            return (Criteria) this;
        }

        public Criteria andShopAddressEqualTo(String value) {
            addCriterion("shop_address =", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressNotEqualTo(String value) {
            addCriterion("shop_address <>", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressGreaterThan(String value) {
            addCriterion("shop_address >", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressGreaterThanOrEqualTo(String value) {
            addCriterion("shop_address >=", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressLessThan(String value) {
            addCriterion("shop_address <", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressLessThanOrEqualTo(String value) {
            addCriterion("shop_address <=", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressLike(String value) {
            addCriterion("shop_address like", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressNotLike(String value) {
            addCriterion("shop_address not like", value, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressIn(List<String> values) {
            addCriterion("shop_address in", values, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressNotIn(List<String> values) {
            addCriterion("shop_address not in", values, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressBetween(String value1, String value2) {
            addCriterion("shop_address between", value1, value2, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopAddressNotBetween(String value1, String value2) {
            addCriterion("shop_address not between", value1, value2, "shopAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressIsNull() {
            addCriterion("shop_detai_address is null");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressIsNotNull() {
            addCriterion("shop_detai_address is not null");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressEqualTo(String value) {
            addCriterion("shop_detai_address =", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressNotEqualTo(String value) {
            addCriterion("shop_detai_address <>", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressGreaterThan(String value) {
            addCriterion("shop_detai_address >", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressGreaterThanOrEqualTo(String value) {
            addCriterion("shop_detai_address >=", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressLessThan(String value) {
            addCriterion("shop_detai_address <", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressLessThanOrEqualTo(String value) {
            addCriterion("shop_detai_address <=", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressLike(String value) {
            addCriterion("shop_detai_address like", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressNotLike(String value) {
            addCriterion("shop_detai_address not like", value, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressIn(List<String> values) {
            addCriterion("shop_detai_address in", values, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressNotIn(List<String> values) {
            addCriterion("shop_detai_address not in", values, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressBetween(String value1, String value2) {
            addCriterion("shop_detai_address between", value1, value2, "shopDetaiAddress");
            return (Criteria) this;
        }

        public Criteria andShopDetaiAddressNotBetween(String value1, String value2) {
            addCriterion("shop_detai_address not between", value1, value2, "shopDetaiAddress");
            return (Criteria) this;
        }
    }

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