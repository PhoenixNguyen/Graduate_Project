/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.hp.domain.Schedule;
import java.util.Date;
import java.util.List;

/**
 *
 * @author HP
 */
public interface ScheduleDAO {
    public boolean saveOrUpdate(Schedule pSchedule);
    public List<Schedule> getScheduleList(String pMaNV, String pDate);
}
