package net.skhu.domain;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class DocumentId implements Serializable {

    @Column(name = "book_id")
    private Long bookId;

    @Column(name = "lecture_id")
    private Long lectureId;

    public Long getBookId() {
        return bookId;
    }

    public Long getLectureId() {
        return lectureId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }

    public void setLectureId(Long lectureId) {
        this.lectureId = lectureId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof DocumentId)) return false;
        DocumentId that = (DocumentId) o;
        return Objects.equals(bookId, that.bookId) && Objects.equals(lectureId, that.lectureId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookId, lectureId);
    }
}
