import React, { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import Pagination from "react-js-pagination";
import * as List from './ReviewList';

const ReviewStorage = () => {
    const navigate = useNavigate();
    const sessionIdx = window.sessionStorage.getItem("USER_IDX");

    const [myReview, setMyReview] = useState([]);
    const [reviewSlice, setReviewSlice] = useState(10);
    const [page, setPage] = useState(1);

    var countMR = myReview.length;
    var MRIdx = countMR - (page - 1) * reviewSlice;

     useEffect(() => {
        getMyReview();
    },[]);

    const getMyReview = () => {
        axios
            .post("http://localhost:8008/storage/review", {sessionIdx})
            .then((res) => {
                setMyReview(res.data)
            })
            .catch((e) => {console.error(e);});
    }

    const handlePage = (page) => {
        setPage(page);
    }

    return (
        <div className="ReviewStorage">
            <h2>후기 보관함</h2>

            <div className="LikeList">
                <p>총 {countMR} 개</p>
                <table border="0" cellPadding="0" cellSpacing="0">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>제목</th>
                            <th>작성날짜</th>
                            <th>조회수</th>
                            <th>좋아요수</th>
                            <th>댓글수</th>
                        </tr>
                    </thead>
                    <tbody>
                        {myReview
                            .slice(
                                reviewSlice * (page - 1),
                                reviewSlice * (page - 1) + reviewSlice,
                            )
                            .map((myReview) => {
                                return (
                                    <tr>
                                        {/* <td>{(countLA--) - (page - 1) + likeSlice}</td> */}
                                        <td>{MRIdx--}</td>
                                        <td className="storageTitle" onClick={() => navigate(`/review/view/${myReview.REVIEW_IDX}`)}>{myReview.REVIEW_TITLE}</td> 
                                        <td>{List.reviewTime(myReview.REVIEW_DATE).toString().split("T")[0]}</td> 
                                        <td>{myReview.REVIEW_CNT}</td> 
                                        <td>{myReview.REVIEW_LIKE}</td> 
                                        <td>{myReview.COMMENT_CNT}</td> 
                                    </tr>
                                )
                        })}
                    </tbody>
                </table>
            </div>

            <Pagination
                activePage={page}
                itemCountPerPage={reviewSlice}
                totalItemsCount={myReview.length}
                prevPageText={"‹"}
                nextPageText={"›"}
                onChange={handlePage}
            />
        </div>
    );
};

export default ReviewStorage;