.class public Lcom/kingroot/kinguser/bbt;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/kinguser/root/mgr/IRootManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bbt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/bbt$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbt$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbt;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    return-void
.end method

.method public static WG()Lcom/kingroot/kinguser/bbt;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/bbt;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bbt;

    return-object v0
.end method


# virtual methods
.method protected WH()Lcom/kingroot/kinguser/root/mgr/IRootManager;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->getInterface()Lcom/kingroot/kinguser/root/mgr/IRootManager;

    move-result-object v0

    return-object v0
.end method

.method public addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
    .locals 1

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->addAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addAskRule(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->addAskRule(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addRule(JLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 204
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    .line 205
    invoke-interface/range {v0 .. v7}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->addRule(JLjava/lang/String;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkAppRules()V
    .locals 1

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->checkAppRules()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bbt;->o(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/mgr/IRootManager;

    move-result-object v0

    return-object v0
.end method

.method public deleteRule(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->deleteRule(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doActionForCallingUid(IIZ)V
    .locals 1

    .prologue
    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 273
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->doActionForCallingUid(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAllAppRuleList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->getAllAppRuleList()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getAllAppsInfo()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->getAllAppsInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 187
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getAllowAppRuleList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 238
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->getAllowAppRuleList()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 244
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getDenyAppRuleList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->getDenyAppRuleList()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 256
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getRuleType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->getRuleType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 160
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inDenyRuleList(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->inDenyRuleList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 173
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->WH()Lcom/kingroot/kinguser/root/mgr/IRootManager;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/bbr;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected o(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/mgr/IRootManager;
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/mgr/IRootManager;

    move-result-object v0

    return-object v0
.end method

.method public removeAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
    .locals 1

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->removeAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSuRequestPromptLive(Z)V
    .locals 1

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 285
    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->setSuRequestPromptLive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPrepareRootMgrList()V
    .locals 1

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->startPrepareRootMgrList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPrepareRootMgrListWhenInstall(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->startPrepareRootMgrListWhenInstall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPrepareRootMgrSuggestion()V
    .locals 1

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->startPrepareRootMgrSuggestion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public triggerSuRequestPrompt()V
    .locals 1

    .prologue
    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->triggerSuRequestPrompt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateRule(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IRootManager;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/root/mgr/IRootManager;->updateRule(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
