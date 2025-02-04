import React from 'react';
import '../../css/todoList.css';
import { useEffect } from 'react';

export default function TodoList({ data }) {
  return (
    <div className="todoList">
      <div className="todoTitle"><h3>신고 처리 현황</h3></div>
      <div className="todoListItem">
        <div className="todoContainer tc1">
          <span className="newList cTitle">신규</span>
          <span className="newCount">{data.c1_sum}</span>
        </div>
      </div>
      <div className="todoListItem">
        <div className="todoContainer tc2">
          <span className="progressList cTitle">담당자배정</span>
          <span className="progressCount">{data.c2_sum}</span>
        </div>
      </div>
      <div className="todoListItem">
        <div className="todoContainer tc3">
          <span className="dropList cTitle">처리중</span>
          <span className="dropCount">{data.c3_sum}</span>
        </div>
      </div>
      <div className="todoListItem">
        <div className="todoContainer tc4">
          <span className="finishList cTitle">완료</span>
          <span className="finishCount">{data.c4_sum}</span>
        </div>
      </div>
    </div>
  );
}
