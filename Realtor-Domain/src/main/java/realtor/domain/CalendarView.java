package realtor.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "calendar_view")
public class CalendarView implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "date_view")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateView;
    @Basic(optional = false)
    @Column(name = "state")
    private boolean state;
    @JoinColumn(name = "id_building", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Building building;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "calendarView")
    private List<Registration> registrationList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDateView() {
        return dateView;
    }

    public void setDateView(Date dateView) {
        this.dateView = dateView;
    }

    public boolean getState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public Building getBuilding() {
        return building;
    }

    public void setBuilding(Building building) {
        this.building = building;
    }

    public List<Registration> getRegistrationList() {
        return registrationList;
    }

    public void setRegistrationList(List<Registration> registrationList) {
        this.registrationList = registrationList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof CalendarView)) {
            return false;
        }
        CalendarView other = (CalendarView) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "CalendarView{" +
                "id=" + id +
                ", dateView=" + dateView +
                ", state=" + state +
                '}';
    }
}
