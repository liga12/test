package realtor.domain;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "building")
public class Building {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "street")
    private String street;
    @Basic(optional = false)
    @Column(name = "house")
    private int house;
    @Column(name = "apartment")
    private Integer apartment;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "building")
    private List<CalendarView> calendarViewList;
    @JoinColumn(name = "id_user", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User user1;

    public Building() {
    }

    public Building(Integer id) {
        this.id = id;
    }

    public Building(Integer id, String street, int house) {
        this.id = id;
        this.street = street;
        this.house = house;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getHouse() {
        return house;
    }

    public void setHouse(int house) {
        this.house = house;
    }

    public Integer getApartment() {
        return apartment;
    }

    public void setApartment(Integer apartment) {
        this.apartment = apartment;
    }

    public List<CalendarView> getCalendarViewList() {
        return calendarViewList;
    }

    public void setCalendarViewList(List<CalendarView> calendarViewList) {
        this.calendarViewList = calendarViewList;
    }

    public User getUser1() {
        return user1;
    }

    public void setUser1(User user1) {
        this.user1 = user1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Building)) {
            return false;
        }
        Building other = (Building) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }


    @Override
    public String toString() {
        return "Building{" +
                "id=" + id +
                ", street='" + street + '\'' +
                ", house=" + house +
                ", apartment=" + apartment +
                ", user1=" + user1 +
                '}';
    }
}
