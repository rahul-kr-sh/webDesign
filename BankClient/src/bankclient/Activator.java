package bankclient;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

import com.sapient.service1.ISer;

/**
 * The activator class controls the plug-in life cycle
 */
public class Activator extends AbstractUIPlugin {

	private ServiceReference sref=null;
	public Activator() {
	}

	
	public void start(BundleContext context) throws Exception {
		System.out.println("============Bank client service started ======================");
		
		sref=context.getServiceReference(ISer.class.getName());
		ISer ser=(ISer)context.getService(sref);
		System.out.println("result    "+ ser.CalcSimple(2000, 2, 3));
//		ISer2 ser2; we cant use it b
		
	}

	
	public void stop(BundleContext context) throws Exception {
		
		super.stop(context);
		System.out.println("============Bank client service stopped ======================");
	}

	
}
