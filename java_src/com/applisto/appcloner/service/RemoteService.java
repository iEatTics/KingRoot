package com.applisto.appcloner.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.applisto.appcloner.classes.DefaultProvider;
import com.applisto.appcloner.classes.FileAccessMonitor;
import com.applisto.appcloner.classes.HostsBlocker;
import com.applisto.appcloner.classes.PreferenceEditor;
import com.applisto.appcloner.classes.Utils;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.service.IRemoteService;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class RemoteService extends Service {
    public static final int INTERFACE_VERSION = 3;
    private static final String TAG = RemoteService.class.getSimpleName();
    private final IRemoteService.Stub mBinder = new IRemoteService.Stub() { // from class: com.applisto.appcloner.service.RemoteService.1
        private void checkCaller() {
            if (!Utils.checkCaller(RemoteService.this)) {
                throw new SecurityException();
            }
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public int getAppClonerInterfaceVersion() {
            checkCaller();
            return 3;
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public void killAppProcesses() throws RemoteException {
            try {
                Context applicationContext = RemoteService.this.getApplicationContext();
                DefaultProvider.invokeSecondaryInstance(applicationContext, "util.Utils", "killAppProcesses", applicationContext);
            } catch (Throwable th) {
                Log.m13698w(RemoteService.TAG, th);
                throw new RemoteException(th.toString());
            }
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public String[] getPreferenceFiles() {
            checkCaller();
            return PreferenceEditor.getPreferenceFiles(RemoteService.this);
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public Map getPreferences(String str) {
            checkCaller();
            return PreferenceEditor.getPreferences(RemoteService.this, str);
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public void setPreference(String str, String str2, String str3) {
            checkCaller();
            PreferenceEditor.setPreference(RemoteService.this, str, str2, str3);
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public Map getAllowedBlockedHosts() {
            checkCaller();
            return HostsBlocker.getAllowedBlockedHosts();
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public void setAllowedBlockedHosts(Map map) {
            checkCaller();
            HostsBlocker.setAllowedBlockedHosts(map);
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public Map getFileAccessMonitorEntries(long j) {
            checkCaller();
            return FileAccessMonitor.getFileAccessMonitorEntries(j);
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public List inspectLayout() throws RemoteException {
            checkCaller();
            try {
                return (List) DefaultProvider.invokeSecondaryStatic(RemoteService.this.getApplicationContext(), "LayoutInspector", "inspectLayout", new Object[0]);
            } catch (Throwable th) {
                Log.m13698w(RemoteService.TAG, th);
                throw new RemoteException(th.toString());
            }
        }

        @Override // com.applisto.appcloner.service.IRemoteService
        public boolean performViewAction(int i, String str, String str2) throws RemoteException {
            try {
                return ((Boolean) DefaultProvider.invokeSecondaryStatic(RemoteService.this.getApplicationContext(), "LayoutInspector", "performViewAction", Integer.valueOf(i), str, str2)).booleanValue();
            } catch (Throwable th) {
                Log.m13698w(RemoteService.TAG, th);
                throw new RemoteException(th.toString());
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
