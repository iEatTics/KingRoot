.class public abstract Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/root/mgr/IRootManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/root/mgr/IRootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.root.mgr.IRootManager"

.field static final TRANSACTION_addAllowRule:I = 0x2

.field static final TRANSACTION_addAppRulesChangeListener:I = 0x5

.field static final TRANSACTION_addAskRule:I = 0x3

.field static final TRANSACTION_addDenyRule:I = 0x4

.field static final TRANSACTION_addRule:I = 0xd

.field static final TRANSACTION_checkAppRules:I = 0x8

.field static final TRANSACTION_deleteRule:I = 0xe

.field static final TRANSACTION_doActionForCallingUid:I = 0x13

.field static final TRANSACTION_getAllAppRuleList:I = 0xf

.field static final TRANSACTION_getAllAppsInfo:I = 0xb

.field static final TRANSACTION_getAllowAppRuleList:I = 0x10

.field static final TRANSACTION_getDenyAppRuleList:I = 0x11

.field static final TRANSACTION_getRuleType:I = 0x9

.field static final TRANSACTION_inDenyRuleList:I = 0xa

.field static final TRANSACTION_removeAppRulesChangeListener:I = 0x6

.field static final TRANSACTION_rootMgrToast:I = 0x12

.field static final TRANSACTION_setSuRequestPromptLive:I = 0x14

.field static final TRANSACTION_startPrepareRootMgrList:I = 0x7

.field static final TRANSACTION_startPrepareRootMgrListWhenInstall:I = 0xc

.field static final TRANSACTION_startPrepareRootMgrSuggestion:I = 0x16

.field static final TRANSACTION_triggerSuRequestPrompt:I = 0x15

.field static final TRANSACTION_updateRule:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/mgr/IRootManager;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 57
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->updateRule(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 69
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 74
    :sswitch_3
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 81
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->addAskRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 86
    :sswitch_4
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 93
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 98
    :sswitch_5
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->addAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V

    goto :goto_0

    .line 106
    :sswitch_6
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->removeAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V

    goto :goto_0

    .line 114
    :sswitch_7
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->startPrepareRootMgrList()V

    goto/16 :goto_0

    .line 120
    :sswitch_8
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->checkAppRules()V

    goto/16 :goto_0

    .line 126
    :sswitch_9
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->getRuleType(Ljava/lang/String;)I

    move-result v0

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    :sswitch_a
    const-string v1, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->inDenyRuleList(Ljava/lang/String;)Z

    move-result v1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v1, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    :sswitch_b
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->getAllAppsInfo()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 154
    :sswitch_c
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->startPrepareRootMgrListWhenInstall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :sswitch_d
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 173
    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->addRule(JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 178
    :sswitch_e
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->deleteRule(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :sswitch_f
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->getAllAppRuleList()Ljava/util/Map;

    move-result-object v0

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 194
    :sswitch_10
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->getAllowAppRuleList()Ljava/util/Map;

    move-result-object v0

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 202
    :sswitch_11
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->getDenyAppRuleList()Ljava/util/Map;

    move-result-object v0

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 210
    :sswitch_12
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :sswitch_13
    const-string v1, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v8

    .line 227
    :cond_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->doActionForCallingUid(IIZ)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    :sswitch_14
    const-string v1, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v8

    .line 236
    :cond_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->setSuRequestPromptLive(Z)V

    goto/16 :goto_0

    .line 241
    :sswitch_15
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->triggerSuRequestPrompt()V

    goto/16 :goto_0

    .line 247
    :sswitch_16
    const-string v0, "com.kingroot.kinguser.root.mgr.IRootManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;->startPrepareRootMgrSuggestion()V

    goto/16 :goto_0

    .line 41
    nop

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
