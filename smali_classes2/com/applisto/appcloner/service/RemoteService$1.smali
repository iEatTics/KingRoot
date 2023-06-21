.class Lcom/applisto/appcloner/service/RemoteService$1;
.super Lcom/applisto/appcloner/service/IRemoteService$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/service/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/service/RemoteService;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/service/RemoteService;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-direct {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;-><init>()V

    return-void
.end method

.method private checkCaller()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/Utils;->checkCaller(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getAllowedBlockedHosts()Ljava/util/Map;
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 87
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->getAllowedBlockedHosts()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAppClonerInterfaceVersion()I
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    const/4 v0, 0x3

    return v0
.end method

.method public getFileAccessMonitorEntries(J)Ljava/util/Map;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 101
    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->getFileAccessMonitorEntries(J)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceFiles()[Ljava/lang/String;
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 66
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/PreferenceEditor;->getPreferenceFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 73
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/PreferenceEditor;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public inspectLayout()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-virtual {v0}, Lcom/applisto/appcloner/service/RemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LayoutInspector"

    const-string v2, "inspectLayout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    invoke-static {v0, v1, v2, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 113
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public killAppProcesses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-virtual {v0}, Lcom/applisto/appcloner/service/RemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "util.Utils"

    const-string v2, "killAppProcesses"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 55
    invoke-static {v0, v1, v2, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 57
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public performViewAction(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-virtual {v0}, Lcom/applisto/appcloner/service/RemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LayoutInspector"

    const-string v2, "performViewAction"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p1, 0x2

    aput-object p3, v3, p1

    .line 123
    invoke-static {v0, v1, v2, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 126
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance p2, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAllowedBlockedHosts(Ljava/util/Map;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 94
    invoke-static {p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->setAllowedBlockedHosts(Ljava/util/Map;)V

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 80
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0, p1, p2, p3}, Lcom/applisto/appcloner/classes/PreferenceEditor;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
