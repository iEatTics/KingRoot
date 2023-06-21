.class public abstract Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

.field static final TRANSACTION_addRule:I = 0x4

.field static final TRANSACTION_deleteRule:I = 0x5

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_getProxyServerPort:I = 0x7

.field static final TRANSACTION_getSharkGuid:I = 0x8

.field static final TRANSACTION_isEnable:I = 0x2

.field static final TRANSACTION_syncCloudRuleList:I = 0x3

.field static final TRANSACTION_syncUserRuleList:I = 0x9

.field static final TRANSACTION_updateRule:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 53
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->enable(ZLjava/util/Map;)I

    move-result v0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v2, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->isEnable()Z

    move-result v2

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->syncCloudRuleList(Ljava/util/List;)V

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    .line 84
    :goto_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 82
    goto :goto_1

    .line 89
    :sswitch_5
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    sget-object v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    .line 97
    :goto_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 95
    goto :goto_2

    .line 102
    :sswitch_6
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    sget-object v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    .line 110
    :goto_3
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->updateRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    .line 108
    goto :goto_3

    .line 115
    :sswitch_7
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->getProxyServerPort()I

    move-result v0

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    :sswitch_8
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :sswitch_9
    const-string v0, "com.kingroot.kinguser.urlcheck.aidl.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->syncUserRuleList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
