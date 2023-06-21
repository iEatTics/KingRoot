// IDaemonService.aidl
package com.kingroot.kinguser.urlcheck.aidl;
import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;

interface IDaemonService {
   int enable(boolean enable, in Map config);

   boolean isEnable();

   oneway void syncCloudRuleList(in List<UrlCheckRule> rule);

   oneway void addRule(in UrlCheckRule rule);

   oneway void deleteRule(in UrlCheckRule rule);

   oneway void updateRule(in UrlCheckRule rule);

   int getProxyServerPort();

   String getSharkGuid();

   oneway void syncUserRuleList(in List<UrlCheckRule> rule);
}
