.class public Lcom/kingroot/kinguser/zh;
.super Landroid/content/pm/PackageManager;
.source "SourceFile"


# static fields
.field private static volatile Wu:Lcom/kingroot/kinguser/zh;


# instance fields
.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/zh;->Wu:Lcom/kingroot/kinguser/zh;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 73
    return-void
.end method

.method public static pq()Lcom/kingroot/kinguser/zh;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/kingroot/kinguser/zh;->Wu:Lcom/kingroot/kinguser/zh;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/kingroot/kinguser/zh;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/zh;->Wu:Lcom/kingroot/kinguser/zh;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/zh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zh;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/zh;->Wu:Lcom/kingroot/kinguser/zh;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/zh;->Wu:Lcom/kingroot/kinguser/zh;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    .prologue
    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 371
    :catch_0
    move-exception v0

    .line 374
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_0

    .line 375
    check-cast v0, Ljava/lang/SecurityException;

    throw v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 391
    :goto_0
    return v0

    .line 385
    :catch_0
    move-exception v0

    .line 387
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_0

    .line 388
    check-cast v0, Ljava/lang/SecurityException;

    throw v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 906
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 363
    :goto_0
    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 363
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public checkSignatures(II)I
    .locals 1

    .prologue
    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 424
    :goto_0
    return v0

    .line 421
    :catch_0
    move-exception v0

    .line 424
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 413
    :goto_0
    return v0

    .line 410
    :catch_0
    move-exception v0

    .line 413
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public du(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return v0

    .line 1129
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1130
    if-eqz v1, :cond_0

    .line 1131
    const/4 v0, 0x1

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1133
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public dv(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1196
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1201
    :goto_0
    return-object v0

    .line 1197
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 1

    .prologue
    .line 1172
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :goto_0
    return-void

    .line 1173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1218
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1225
    :goto_0
    return-object v0

    .line 1219
    :catch_0
    move-exception v0

    .line 1221
    instance-of v1, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v1, :cond_0

    .line 1222
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1231
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1238
    :goto_0
    return-object v0

    .line 1232
    :catch_0
    move-exception v0

    .line 1234
    instance-of v1, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v1, :cond_0

    .line 1235
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    :goto_0
    if-nez v0, :cond_0

    .line 647
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 640
    :catch_0
    move-exception v0

    .line 642
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 643
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 649
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 654
    const/4 v1, 0x0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 663
    :goto_0
    if-nez v0, :cond_0

    .line 664
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 657
    :catch_0
    move-exception v0

    .line 659
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 660
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 666
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    :goto_0
    if-nez v0, :cond_0

    .line 271
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 267
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 273
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1004
    const/4 v1, 0x0

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1013
    :goto_0
    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 1007
    :catch_0
    move-exception v0

    .line 1009
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 1010
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1016
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1021
    const/4 v1, 0x0

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1030
    :goto_0
    if-nez v0, :cond_0

    .line 1031
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 1024
    :catch_0
    move-exception v0

    .line 1026
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 1027
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1033
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1244
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1248
    :goto_0
    return-object v0

    .line 1245
    :catch_0
    move-exception v0

    .line 1248
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1261
    :goto_0
    return-object v0

    .line 1255
    :catch_0
    move-exception v0

    .line 1257
    instance-of v1, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v1, :cond_0

    .line 1258
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 973
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 974
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 981
    :goto_0
    return v0

    .line 975
    :catch_0
    move-exception v0

    .line 977
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_0

    .line 978
    check-cast v0, Ljava/lang/IllegalArgumentException;

    throw v0

    .line 981
    :cond_0
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    .line 720
    :catch_0
    move-exception v0

    .line 723
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 729
    const/4 v1, 0x0

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 738
    :goto_0
    if-nez v0, :cond_0

    .line 739
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 732
    :catch_0
    move-exception v0

    .line 734
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 735
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 741
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_0
    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 249
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 255
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 806
    :goto_0
    return-object v0

    .line 803
    :catch_0
    move-exception v0

    .line 806
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1044
    :goto_0
    return-object v0

    .line 1041
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1059
    :goto_0
    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 1053
    :catch_0
    move-exception v0

    .line 1055
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 1056
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1062
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 1

    .prologue
    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 951
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 955
    :goto_0
    return v0

    .line 952
    :catch_0
    move-exception v0

    .line 955
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 712
    :goto_0
    return-object v0

    .line 709
    :catch_0
    move-exception v0

    .line 712
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 631
    :goto_0
    return-object v0

    .line 628
    :catch_0
    move-exception v0

    .line 631
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 453
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 331
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hX()Lcom/kingroot/kinguser/zf;

    move-result-object v1

    .line 332
    if-eqz v1, :cond_1

    .line 333
    invoke-interface {v1, p1}, Lcom/kingroot/kinguser/zf;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 337
    :cond_1
    if-nez v0, :cond_2

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    :cond_2
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 871
    :goto_0
    return-object v0

    .line 868
    :catch_0
    move-exception v0

    .line 871
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    .prologue
    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 608
    :goto_0
    return-object v0

    .line 605
    :catch_0
    move-exception v0

    .line 608
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1212
    :goto_0
    return-object v0

    .line 1208
    :catch_0
    move-exception v0

    .line 1212
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .prologue
    .line 1149
    const/4 v0, 0x0

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1156
    :goto_0
    return-object v0

    .line 1153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 3

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 165
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 171
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 93
    :catch_0
    move-exception v0

    .line 96
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 97
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 106
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1298
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1302
    :goto_0
    return-object v0

    .line 1299
    :catch_0
    move-exception v0

    .line 1302
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    .line 431
    :catch_0
    move-exception v0

    .line 434
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 349
    :catch_0
    move-exception v0

    .line 352
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    if-nez v0, :cond_0

    .line 223
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 219
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 225
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 3

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :goto_0
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 183
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 189
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 931
    :goto_0
    return v0

    .line 928
    :catch_0
    move-exception v0

    .line 931
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPreferredPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 899
    :goto_0
    return-object v0

    .line 896
    :catch_0
    move-exception v0

    .line 899
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 3

    .prologue
    .line 1102
    const/4 v1, 0x0

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1111
    :goto_0
    if-nez v0, :cond_0

    .line 1112
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 1105
    :catch_0
    move-exception v0

    .line 1107
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 1108
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1114
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 285
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 291
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 812
    const/4 v1, 0x0

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 821
    :goto_0
    if-nez v0, :cond_0

    .line 822
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 815
    :catch_0
    move-exception v0

    .line 817
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 818
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 824
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 830
    const/4 v1, 0x0

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 839
    :goto_0
    if-nez v0, :cond_0

    .line 840
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 833
    :catch_0
    move-exception v0

    .line 835
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 836
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 842
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 848
    const/4 v1, 0x0

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 858
    :goto_0
    if-nez v0, :cond_0

    .line 859
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 852
    :catch_0
    move-exception v0

    .line 854
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 855
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 861
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 3

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :goto_0
    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 304
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 310
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    .line 475
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 775
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 776
    invoke-static {}, Lcom/kingroot/kinguser/uh;->ky()Lcom/kingroot/kinguser/uh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/uh;->i(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 785
    :goto_0
    return-object v0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 785
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1277
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1281
    :goto_0
    return-object v0

    .line 1278
    :catch_0
    move-exception v0

    .line 1281
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1267
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1271
    :goto_0
    return-object v0

    .line 1268
    :catch_0
    move-exception v0

    .line 1271
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1291
    :goto_0
    return-object v0

    .line 1288
    :catch_0
    move-exception v0

    .line 1291
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 1

    .prologue
    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    .line 793
    :catch_0
    move-exception v0

    .line 796
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 488
    :goto_0
    return v0

    .line 485
    :catch_0
    move-exception v0

    .line 488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 991
    :goto_0
    return v0

    .line 988
    :catch_0
    move-exception v0

    .line 991
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    :goto_0
    return-object v0

    .line 538
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 594
    :catch_0
    move-exception v0

    .line 597
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 617
    :catch_0
    move-exception v0

    .line 620
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 511
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    .line 526
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 572
    :catch_0
    move-exception v0

    .line 575
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    .line 561
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 201
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 207
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 400
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Ljava/lang/SecurityException;

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    .line 497
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1

    .prologue
    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 582
    :catch_0
    move-exception v0

    .line 585
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 549
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :goto_0
    return-void

    .line 964
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 1

    .prologue
    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_0
    return-void

    .line 1182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public verifyPendingInstall(II)V
    .locals 1

    .prologue
    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zh;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v0

    goto :goto_0
.end method
