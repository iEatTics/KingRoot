// ILoadAppsListener.aidl
package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.CategoryEntity;

// Declare any non-default types here with import statements
interface ILoadCategoryListener {
    oneway void onReceive(int retCode, in List<CategoryEntity> categoryEntitis);
}
