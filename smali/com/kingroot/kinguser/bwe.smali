.class public Lcom/kingroot/kinguser/bwe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bQV:Lcom/kingroot/kinguser/bwe;


# instance fields
.field private final bET:Lcom/kingroot/kinguser/bnr;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/bnr;->e(Ljava/lang/String;Landroid/content/Context;)Lcom/kingroot/kinguser/bnr;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bwe;->bET:Lcom/kingroot/kinguser/bnr;

    .line 54
    return-void
.end method

.method private static N(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 87
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 91
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.tauth.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</intent-filter>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/bpy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_1
    move-exception v1

    .line 123
    const-string v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity,\u8bf7\u52a0\u4e0acom.tencent.connect.common.AssistActivity,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/bpy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(IILandroid/content/Intent;Lcom/kingroot/kinguser/bwd;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    const-string v3, "openSDK_LOG.Tencent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResultData() reqcode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", resultcode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", data = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", listener = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/kingroot/kinguser/bnt;->agt()Lcom/kingroot/kinguser/bnt;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/bnt;->a(IILandroid/content/Intent;Lcom/kingroot/kinguser/bwd;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 377
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static declared-synchronized f(Ljava/lang/String;Landroid/content/Context;)Lcom/kingroot/kinguser/bwe;
    .locals 4

    .prologue
    .line 58
    const-class v1, Lcom/kingroot/kinguser/bwe;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bqo;->a(Landroid/content/Context;)V

    .line 59
    const-string v0, "openSDK_LOG.Tencent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance()  -- start, appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/kingroot/kinguser/bwe;->bQV:Lcom/kingroot/kinguser/bwe;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/bwe;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bwe;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/bwe;->bQV:Lcom/kingroot/kinguser/bwe;

    .line 69
    :cond_0
    :goto_0
    invoke-static {p1, p0}, Lcom/kingroot/kinguser/bwe;->N(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 70
    const/4 v0, 0x0

    .line 75
    :goto_1
    monitor-exit v1

    return-object v0

    .line 63
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/bwe;->bQV:Lcom/kingroot/kinguser/bwe;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwe;->agm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/kingroot/kinguser/bwe;->bQV:Lcom/kingroot/kinguser/bwe;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bwe;->bS(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/bwe;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bwe;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/bwe;->bQV:Lcom/kingroot/kinguser/bwe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :cond_2
    :try_start_2
    invoke-static {p1, p0}, Lcom/kingroot/kinguser/bqp;->L(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bqp;

    .line 74
    const-string v0, "openSDK_LOG.Tencent"

    const-string v2, "createInstance()  -- end"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/kingroot/kinguser/bwe;->bQV:Lcom/kingroot/kinguser/bwe;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public agl()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/bwe;->bET:Lcom/kingroot/kinguser/bnr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnr;->c()Z

    move-result v0

    return v0
.end method

.method public agm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/bwe;->bET:Lcom/kingroot/kinguser/bnr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnr;->agq()Lcom/kingroot/kinguser/bno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bno;->agm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bS(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "logout()"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/bwe;->bET:Lcom/kingroot/kinguser/bnr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnr;->agq()Lcom/kingroot/kinguser/bno;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/bno;->aS(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/bwe;->bET:Lcom/kingroot/kinguser/bnr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnr;->agq()Lcom/kingroot/kinguser/bno;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bno;->mH(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public c(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;)I
    .locals 3

    .prologue
    .line 160
    const-string v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login() with activity, scope is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bwe;->bET:Lcom/kingroot/kinguser/bnr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bnr;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;)I

    move-result v0

    return v0
.end method
