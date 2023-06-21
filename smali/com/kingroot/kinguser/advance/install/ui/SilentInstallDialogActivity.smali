.class public Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

.field private aoQ:Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

.field private aoR:Landroid/widget/ImageView;

.field private aoS:Landroid/widget/ImageView;

.field private aoT:Landroid/widget/ImageView;

.field private aoU:Landroid/widget/TextView;

.field private aoV:Landroid/widget/TextView;

.field private aoW:Landroid/widget/Button;

.field private aoX:Landroid/widget/Button;

.field private aoY:Landroid/widget/CheckBox;

.field private aoZ:Z

.field private apa:Lcom/kingroot/kinguser/bgf;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mContext:Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoZ:Z

    .line 72
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;-><init>(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->apa:Lcom/kingroot/kinguser/bgf;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;ZZ)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->c(ZZ)V

    return-void
.end method

.method private aH(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoQ:Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    new-instance v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 270
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$2;-><init>(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 279
    :cond_0
    :goto_1
    return-void

    .line 263
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 270
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$2;-><init>(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v1

    .line 270
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bed;

    sget-object v4, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v5, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v6, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$2;

    invoke-direct {v6, p0, v1}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$2;-><init>(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v3, v4, v5, v7, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 277
    :cond_2
    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoW:Landroid/widget/Button;

    return-object v0
.end method

.method private c(ZZ)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 236
    iget-boolean v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoZ:Z

    if-eqz v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 239
    :cond_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoZ:Z

    .line 242
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1889d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    if-eqz p1, :cond_4

    :goto_1
    iput v0, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    .line 249
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agy;->a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V

    .line 253
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 254
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget v2, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    iget-wide v4, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mDuration:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/agy;->d(Ljava/lang/String;IJ)V

    .line 257
    :cond_3
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aH(Z)V

    goto :goto_0

    .line 248
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fM(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/zh;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    .line 316
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 318
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 319
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private h(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoQ:Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    .line 130
    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    .line 133
    iput-boolean v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoZ:Z

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->apa:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bgf;->iH(I)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    sget-object v0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoQ:Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    .line 140
    const-string v0, "silent_install_log_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoQ:Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private wH()V
    .locals 5

    .prologue
    const v4, 0x7f07034d

    const v3, 0x7f0202ba

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070329

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoR:Landroid/widget/ImageView;

    const v1, 0x7f020299

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoS:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoU:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoT:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    const-string v1, "com.android.shell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoS:Landroid/widget/ImageView;

    const v1, 0x7f0202bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoU:Landroid/widget/TextView;

    const v1, 0x7f07032a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 198
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoS:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v2, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    goto :goto_1

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->fM(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_4

    .line 212
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoT:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoP:Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoT:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 289
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 303
    if-eqz p2, :cond_0

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1889e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 307
    :cond_0
    if-eqz p2, :cond_1

    const-wide/32 v0, 0x5265c00

    :goto_0
    iput-wide v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mDuration:J

    .line 308
    return-void

    .line 307
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0f0097

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 224
    :goto_0
    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x1889b

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 230
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->c(ZZ)V

    .line 231
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->finish()V

    .line 232
    return-void

    :cond_0
    move v0, v1

    .line 222
    goto :goto_0

    .line 227
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x1889c

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iput-object p0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mContext:Landroid/content/Context;

    .line 95
    const v0, 0x7f030077

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 98
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->mTitleView:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoR:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0f0194

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoS:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0f0196

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoT:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0f0195

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoU:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0f0197

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoV:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoW:Landroid/widget/Button;

    .line 105
    const v0, 0x7f0f0150

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoY:Landroid/widget/CheckBox;

    .line 106
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoX:Landroid/widget/Button;

    .line 109
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->h(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->finish()V

    .line 112
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->c(ZZ)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->h(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->finish()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->apa:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->cancel()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    const-wide/16 v0, 0x7530

    const v2, 0x3000000a

    const-string v3, "silent_install_alert"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/zk;->a(JILjava/lang/String;Z)Landroid/os/PowerManager$WakeLock;

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1889a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoY:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoY:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoW:Landroid/widget/Button;

    const v1, 0x7f070325

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoX:Landroid/widget/Button;

    const v1, 0x7f07031b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoW:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->aoX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->wH()V

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->apa:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->abz()Lcom/kingroot/kinguser/bgf;

    .line 161
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "silent_install_alert"

    invoke-static {v0}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->c(ZZ)V

    .line 175
    invoke-virtual {p0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->finish()V

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 178
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method
