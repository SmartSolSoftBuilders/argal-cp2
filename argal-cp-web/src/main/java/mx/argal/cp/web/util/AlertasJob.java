package mx.argal.cp.web.util;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import mx.argal.cp.servicios.AlertasServicio;

public class AlertasJob extends QuartzJobBean {
	
	private AlertasServicio alertasServicio;
	
	@Override
    protected void executeInternal(JobExecutionContext jobContext) throws JobExecutionException {
		this.alertasServicio = (AlertasServicio) jobContext.getJobDetail().getJobDataMap().get("alertasServicio");
    }

}