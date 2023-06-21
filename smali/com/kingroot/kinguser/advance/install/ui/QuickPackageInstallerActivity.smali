.class public Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$a;
    }
.end annotation


# static fields
.field private static final anS:I


# instance fields
.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private anQ:Lcom/kingroot/kinguser/tk;

.field private anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

.field private anT:Ljava/lang/Runnable;

.field private anU:Lcom/kingroot/kinguser/bed;

.field private anV:Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

.field private mHandler:Landroid/os/Handler;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    .line 94
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;-><init>(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$2;-><init>(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anT:Ljava/lang/Runnable;

    .line 307
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$3;-><init>(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 386
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;-><init>(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 456
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;-><init>(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anU:Lcom/kingroot/kinguser/bed;

    .line 487
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;-><init>(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anV:Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->b(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anT:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->wz()Landroid/content/ComponentName;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 259
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 260
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->ww()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->wx()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anV:Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    return-object v0
.end method

.method static synthetic wA()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anS:I

    return v0
.end method

.method private wv()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anU:Lcom/kingroot/kinguser/bed;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v4, v4, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1897d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anT:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void
.end method

.method private ww()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/arv;->unregisterCallback(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method

.method private wx()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->a(Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v0

    .line 196
    iput v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNe:I

    .line 197
    iput-boolean v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    .line 198
    iput-boolean v3, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNf:Z

    .line 200
    iget-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-string v2, "apk path invalid"

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0
.end method

.method private wy()I
    .locals 8

    .prologue
    .line 229
    const/4 v1, -0x1

    .line 231
    :try_start_0
    const-string v0, "android.app.ActivityManagerNative"

    .line 232
    const-string v0, "android.app.IActivityManager"

    .line 233
    const-string v0, "getDefault"

    .line 234
    const-string v0, "getActivityToken"

    .line 235
    const-string v0, "getLaunchedFromUid"

    .line 237
    const-string v0, "android.app.ActivityManagerNative"

    const-string v2, "getDefault"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    const-class v2, Landroid/app/Activity;

    const-string v3, "getActivityToken"

    invoke-static {v2, v3, p0}, Lcom/kingroot/kinguser/aam;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 241
    const-string v3, "android.app.IActivityManager"

    const-string v4, "getLaunchedFromUid"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v3, v4, v5, v0, v6}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 248
    :goto_0
    return v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v0, "common_quickinstaller"

    const-string v2, "Could not determine the launching uid."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private wz()Landroid/content/ComponentName;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 265
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const/4 v1, 0x0

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_3

    .line 271
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v4, "MATCH_ALL"

    invoke-static {v0, v4, v3}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 273
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 281
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 286
    :goto_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const-class v1, Landroid/content/pm/ResolveInfo;

    const-string v5, "system"

    invoke-static {v1, v5, v0}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 295
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 301
    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 284
    goto :goto_2

    .line 303
    :cond_2
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/kingroot/kinguser/ahd;

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/ahd;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ge()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->b(Landroid/net/Uri;)V

    .line 136
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->finish()V

    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/ags;->aF(Z)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->wy()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->b(Landroid/content/Intent;I)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    .line 141
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->xa()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->b(Landroid/net/Uri;)V

    .line 147
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->finish()V

    .line 166
    :goto_0
    return-void

    .line 151
    :cond_2
    const-string v0, "safe install"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anQ:Lcom/kingroot/kinguser/tk;

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anQ:Lcom/kingroot/kinguser/tk;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 157
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/awe;->SI()Lcom/kingroot/kinguser/awe;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awe;->jw(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iput v4, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 161
    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->wx()V

    goto :goto_0

    .line 164
    :cond_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->wv()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onDestroy()V

    .line 220
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/arv;->unregisterCallback(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->anQ:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 226
    :cond_0
    return-void
.end method
