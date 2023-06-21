.class public Lcom/kingroot/kinguser/bnn;
.super Lcom/kingroot/kinguser/bns;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bnn$a;,
        Lcom/kingroot/kinguser/bnn$b;
    }
.end annotation


# static fields
.field public static bEk:Ljava/lang/String;

.field public static bEl:Ljava/lang/String;


# instance fields
.field private bEm:Lcom/kingroot/kinguser/bwd;

.field private bEn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "libwbsafeedit"

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEl:Ljava/lang/String;

    .line 94
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 95
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v0, "libwbsafeedit_64"

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEl:Ljava/lang/String;

    .line 99
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm64-v8a architecture"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v0, "libwbsafeedit_x86"

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEl:Ljava/lang/String;

    .line 103
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is x86 architecture"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string v0, "libwbsafeedit_x86_64"

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEl:Ljava/lang/String;

    .line 107
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is x86_64 architecture"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "libwbsafeedit"

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEl:Ljava/lang/String;

    .line 111
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm(default) architecture"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_3
    const-string v0, "libwbsafeedit"

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bnn;->bEl:Ljava/lang/String;

    .line 116
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm(default) architecture"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/bno;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bns;-><init>(Lcom/kingroot/kinguser/bno;)V

    .line 126
    return-void
.end method

.method private a(ZLcom/kingroot/kinguser/bwd;)I
    .locals 7

    .prologue
    .line 240
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, showDialog -- start"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/bqo;->agA()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 243
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bnn;->agr()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    if-eqz p1, :cond_0

    .line 245
    const-string v1, "isadd"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    const-string v1, "scope"

    iget-object v2, p0, Lcom/kingroot/kinguser/bnn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-boolean v1, Lcom/kingroot/kinguser/bnn;->bEX:Z

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "pf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desktop_m_qq-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/bnn;->bEV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/bnn;->bEU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/bnn;->bEW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {}, Lcom/kingroot/kinguser/bqo;->agA()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/bqr;->M(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    const-string v3, "sign"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "display"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "response_type"

    const-string v2, "token"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "redirect_uri"

    const-string v2, "auth://tauth.qq.com/"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "cancel_display"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "switch"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "status_userip"

    invoke-static {}, Lcom/kingroot/kinguser/bqt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-static {}, Lcom/kingroot/kinguser/bqq;->ahr()Lcom/kingroot/kinguser/bqq;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/bqo;->agA()Landroid/content/Context;

    move-result-object v3

    const-string v4, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/bqq;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {v0}, Lcom/kingroot/kinguser/bqm;->f(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    new-instance v0, Lcom/kingroot/kinguser/bnn$b;

    invoke-static {}, Lcom/kingroot/kinguser/bqo;->agA()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bnn$b;-><init>(Lcom/kingroot/kinguser/bnn;Landroid/content/Context;Lcom/kingroot/kinguser/bwd;ZZ)V

    .line 278
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "OpenUi, showDialog TDialog"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v1, Lcom/kingroot/kinguser/bnn$1;

    invoke-direct {v1, p0, v6, v0}, Lcom/kingroot/kinguser/bnn$1;-><init>(Lcom/kingroot/kinguser/bnn;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/bqs;->a(Ljava/lang/Runnable;)V

    .line 304
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, showDialog -- end"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x2

    return v0

    .line 252
    :cond_1
    const-string v1, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z
    .locals 10

    .prologue
    .line 309
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "startActionActivity() -- start"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bnn;->mI(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bnn;->agr()Landroid/os/Bundle;

    move-result-object v1

    .line 315
    if-eqz p3, :cond_0

    .line 316
    const-string v2, "isadd"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    const-string v2, "scope"

    iget-object v3, p0, Lcom/kingroot/kinguser/bnn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "client_id"

    iget-object v3, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-boolean v2, Lcom/kingroot/kinguser/bnn;->bEX:Z

    if-eqz v2, :cond_1

    .line 322
    const-string v2, "pf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desktop_m_qq-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/bnn;->bEV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/bnn;->bEU:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/bnn;->bEW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    const-string v2, "need_pay"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "oauth_app_name"

    invoke-static {}, Lcom/kingroot/kinguser/bqo;->agA()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bqr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v2, "key_action"

    const-string v3, "action_login"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v2, "key_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    const-string v1, "appid"

    iget-object v2, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bnn;->o(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    new-instance v1, Lcom/kingroot/kinguser/bnn$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    invoke-direct {v1, p0, v2}, Lcom/kingroot/kinguser/bnn$a;-><init>(Lcom/kingroot/kinguser/bnn;Lcom/kingroot/kinguser/bwd;)V

    .line 335
    iput-object v1, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    .line 337
    invoke-static {}, Lcom/kingroot/kinguser/bnt;->agt()Lcom/kingroot/kinguser/bnt;

    move-result-object v1

    const/16 v2, 0x2b5d

    iget-object v3, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/bnt;->a(ILcom/kingroot/kinguser/bwd;)Ljava/lang/Object;

    .line 338
    if-eqz p2, :cond_2

    .line 339
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "startAssitActivity fragment"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v1, 0x2b5d

    invoke-virtual {p0, p2, v0, v1}, Lcom/kingroot/kinguser/bnn;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 345
    :goto_1
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "startActionActivity() -- end, found activity for loginIntent"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/kingroot/kinguser/bqg;->ahl()Lcom/kingroot/kinguser/bqg;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LOGIN_CHECK_SDK"

    const-string v3, "1000"

    iget-object v4, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, ""

    invoke-virtual/range {v0 .. v9}, Lcom/kingroot/kinguser/bqg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 348
    const/4 v0, 0x1

    .line 354
    :goto_2
    return v0

    .line 324
    :cond_1
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :cond_2
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "startAssitActivity activity"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/16 v1, 0x2b5d

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingroot/kinguser/bnn;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_1

    .line 351
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/bqg;->ahl()Lcom/kingroot/kinguser/bqg;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LOGIN_CHECK_SDK"

    const-string v3, "1000"

    iget-object v4, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "startActionActivity fail"

    invoke-virtual/range {v0 .. v9}, Lcom/kingroot/kinguser/bqg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 353
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "startActionActivity() -- end, no target activity for loginIntent"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bnn;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEn:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bnn;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bnn;->ags()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;)I
    .locals 6

    .prologue
    .line 205
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/bnn;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;ZLandroid/support/v4/app/Fragment;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;ZLandroid/support/v4/app/Fragment;)I
    .locals 9

    .prologue
    .line 209
    iput-object p2, p0, Lcom/kingroot/kinguser/bnn;->d:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEn:Ljava/lang/ref/WeakReference;

    .line 211
    iput-object p3, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/bqp;->L(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bqp;

    move-result-object v0

    const-string v1, "C_LoginWeb"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqp;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p5, p4}, Lcom/kingroot/kinguser/bnn;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, showUi, return Constants.UI_ACTIVITY"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/bqg;->ahl()Lcom/kingroot/kinguser/bqg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bno;->ago()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "5"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/bqg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 223
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bqg;->ahl()Lcom/kingroot/kinguser/bqg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bno;->ago()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bnn;->bEQ:Lcom/kingroot/kinguser/bno;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "5"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "0"

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/bqg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "doLogin startActivity fail show dialog."

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/kingroot/kinguser/bnn$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bnn$a;-><init>(Lcom/kingroot/kinguser/bnn;Lcom/kingroot/kinguser/bwd;)V

    .line 228
    iput-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    invoke-direct {p0, p4, v0}, Lcom/kingroot/kinguser/bnn;->a(ZLcom/kingroot/kinguser/bwd;)I

    move-result v0

    goto :goto_0
.end method

.method public agk()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bnn;->bEm:Lcom/kingroot/kinguser/bwd;

    .line 237
    return-void
.end method
