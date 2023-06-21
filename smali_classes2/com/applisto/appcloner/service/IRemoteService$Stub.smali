.class public abstract Lcom/applisto/appcloner/service/IRemoteService$Stub;
.super Landroid/os/Binder;
.source "IRemoteService.java"

# interfaces
.implements Lcom/applisto/appcloner/service/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/service/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.applisto.appcloner.service.IRemoteService"

.field static final TRANSACTION_getAllowedBlockedHosts:I = 0x6

.field static final TRANSACTION_getAppClonerInterfaceVersion:I = 0x1

.field static final TRANSACTION_getFileAccessMonitorEntries:I = 0x8

.field static final TRANSACTION_getPreferenceFiles:I = 0x3

.field static final TRANSACTION_getPreferences:I = 0x4

.field static final TRANSACTION_inspectLayout:I = 0x9

.field static final TRANSACTION_killAppProcesses:I = 0x2

.field static final TRANSACTION_performViewAction:I = 0xa

.field static final TRANSACTION_setAllowedBlockedHosts:I = 0x7

.field static final TRANSACTION_setPreference:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.applisto.appcloner.service.IRemoteService"

    .line 59
    invoke-virtual {p0, p0, v0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/applisto/appcloner/service/IRemoteService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.applisto.appcloner.service.IRemoteService"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    instance-of v1, v0, Lcom/applisto/appcloner/service/IRemoteService;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Lcom/applisto/appcloner/service/IRemoteService;

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/applisto/appcloner/service/IRemoteService;
    .locals 1

    .line 434
    sget-object v0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/applisto/appcloner/service/IRemoteService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/applisto/appcloner/service/IRemoteService;)Z
    .locals 1

    .line 427
    sget-object v0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/applisto/appcloner/service/IRemoteService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 428
    sput-object p0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/applisto/appcloner/service/IRemoteService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.applisto.appcloner.service.IRemoteService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 174
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-virtual {p0, p1, p4, p2}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->performViewAction(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 166
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->inspectLayout()Ljava/util/List;

    move-result-object p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v1

    .line 156
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getFileAccessMonitorEntries(J)Ljava/util/Map;

    move-result-object p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 146
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->setAllowedBlockedHosts(Ljava/util/Map;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 138
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getAllowedBlockedHosts()Ljava/util/Map;

    move-result-object p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 125
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {p0, p1, p4, p2}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->setPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 115
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getPreferences(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 107
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getPreferenceFiles()[Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 100
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->killAppProcesses()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 92
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getAppClonerInterfaceVersion()I

    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 87
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
