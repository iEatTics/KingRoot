.class public Lcom/kingroot/kinguser/cca;
.super Landroid/content/pm/PackageManager;
.source "SourceFile"


# static fields
.field private static volatile bWV:Lcom/kingroot/kinguser/cca;


# instance fields
.field protected bWW:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cca;->bWV:Lcom/kingroot/kinguser/cca;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    .line 73
    return-void
.end method

.method public static akH()Lcom/kingroot/kinguser/cca;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/kingroot/kinguser/cca;->bWV:Lcom/kingroot/kinguser/cca;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/kingroot/kinguser/cca;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cca;->bWV:Lcom/kingroot/kinguser/cca;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/cca;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cca;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cca;->bWV:Lcom/kingroot/kinguser/cca;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cca;->bWV:Lcom/kingroot/kinguser/cca;

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
.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return v0

    .line 1105
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1106
    if-eqz v1, :cond_0

    .line 1107
    const/4 v0, 0x1

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1109
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 376
    :goto_0
    return v0

    .line 369
    :catch_0
    move-exception v0

    .line 372
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_0

    .line 373
    check-cast v0, Ljava/lang/SecurityException;

    throw v0

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 389
    :goto_0
    return v0

    .line 383
    :catch_0
    move-exception v0

    .line 385
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_0

    .line 386
    check-cast v0, Ljava/lang/SecurityException;

    throw v0

    .line 389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 880
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
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    :goto_0
    return v0

    .line 347
    :catch_0
    move-exception v0

    .line 350
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public checkSignatures(II)I
    .locals 1

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 419
    :catch_0
    move-exception v0

    .line 422
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 411
    :goto_0
    return v0

    .line 408
    :catch_0
    move-exception v0

    .line 411
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    return-void

    .line 889
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
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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

.method public extendVerificationTimeout(IIJ)V
    .locals 0

    .prologue
    .line 1150
    return-void
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    .line 670
    :catch_0
    move-exception v0

    .line 673
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 684
    :goto_0
    return-object v0

    .line 681
    :catch_0
    move-exception v0

    .line 684
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 633
    const/4 v1, 0x0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 642
    :goto_0
    if-nez v0, :cond_0

    .line 643
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 639
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 645
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 650
    const/4 v1, 0x0

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 659
    :goto_0
    if-nez v0, :cond_0

    .line 660
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 653
    :catch_0
    move-exception v0

    .line 655
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 656
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 662
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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .line 981
    const/4 v1, 0x0

    .line 983
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 990
    :goto_0
    if-nez v0, :cond_0

    .line 991
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 984
    :catch_0
    move-exception v0

    .line 986
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 987
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 993
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 998
    const/4 v1, 0x0

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1007
    :goto_0
    if-nez v0, :cond_0

    .line 1008
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 1001
    :catch_0
    move-exception v0

    .line 1003
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 1004
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1010
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
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 734
    :goto_0
    return-object v0

    .line 731
    :catch_0
    move-exception v0

    .line 734
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 745
    :goto_0
    return-object v0

    .line 742
    :catch_0
    move-exception v0

    .line 745
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 945
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    .line 946
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 953
    :goto_0
    return v0

    .line 947
    :catch_0
    move-exception v0

    .line 949
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_0

    .line 950
    check-cast v0, Ljava/lang/IllegalArgumentException;

    throw v0

    .line 953
    :cond_0
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    .line 702
    :catch_0
    move-exception v0

    .line 705
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 711
    const/4 v1, 0x0

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 720
    :goto_0
    if-nez v0, :cond_0

    .line 721
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 714
    :catch_0
    move-exception v0

    .line 716
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 717
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 723
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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    .line 775
    :catch_0
    move-exception v0

    .line 778
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1017
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1021
    :goto_0
    return-object v0

    .line 1018
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1027
    const/4 v1, 0x0

    .line 1029
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1036
    :goto_0
    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 1030
    :catch_0
    move-exception v0

    .line 1032
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 1033
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1039
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 1

    .prologue
    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    .line 923
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 927
    :goto_0
    return v0

    .line 924
    :catch_0
    move-exception v0

    .line 927
    const/16 v0, -0x270f

    goto :goto_0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 694
    :goto_0
    return-object v0

    .line 691
    :catch_0
    move-exception v0

    .line 694
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    .line 624
    :catch_0
    move-exception v0

    .line 627
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
    .line 448
    const/4 v0, 0x0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    .line 451
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
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 843
    :goto_0
    return-object v0

    .line 840
    :catch_0
    move-exception v0

    .line 843
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    .prologue
    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    .line 601
    :catch_0
    move-exception v0

    .line 604
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
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1132
    :goto_0
    return-object v0

    .line 1129
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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 971
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 975
    :goto_0
    return-object v0

    .line 972
    :catch_0
    move-exception v0

    .line 975
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 429
    :catch_0
    move-exception v0

    .line 432
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

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
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 903
    :goto_0
    return v0

    .line 900
    :catch_0
    move-exception v0

    .line 903
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
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPreferredPackages(I)Ljava/util/List;
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

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 3

    .prologue
    .line 1078
    const/4 v1, 0x0

    .line 1080
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1087
    :goto_0
    if-nez v0, :cond_0

    .line 1088
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 1081
    :catch_0
    move-exception v0

    .line 1083
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 1084
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 1090
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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .line 784
    const/4 v1, 0x0

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 793
    :goto_0
    if-nez v0, :cond_0

    .line 794
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 787
    :catch_0
    move-exception v0

    .line 789
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 790
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 796
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 802
    const/4 v1, 0x0

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 811
    :goto_0
    if-nez v0, :cond_0

    .line 812
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 805
    :catch_0
    move-exception v0

    .line 807
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 808
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 814
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 820
    const/4 v1, 0x0

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 830
    :goto_0
    if-nez v0, :cond_0

    .line 831
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    .line 824
    :catch_0
    move-exception v0

    .line 826
    instance-of v2, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v2, :cond_1

    .line 827
    check-cast v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v0

    .line 833
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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .line 470
    const/4 v0, 0x0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 473
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 751
    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 757
    :goto_0
    return-object v0

    .line 754
    :catch_0
    move-exception v0

    .line 757
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1061
    :goto_0
    return-object v0

    .line 1058
    :catch_0
    move-exception v0

    .line 1061
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1050
    :goto_0
    return-object v0

    .line 1047
    :catch_0
    move-exception v0

    .line 1050
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1072
    :goto_0
    return-object v0

    .line 1069
    :catch_0
    move-exception v0

    .line 1072
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 1

    .prologue
    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    .line 765
    :catch_0
    move-exception v0

    .line 768
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 486
    :goto_0
    return v0

    .line 483
    :catch_0
    move-exception v0

    .line 486
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 963
    :goto_0
    return v0

    .line 960
    :catch_0
    move-exception v0

    .line 963
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
    .line 531
    const/4 v0, 0x0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    .line 534
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
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    .line 590
    :catch_0
    move-exception v0

    .line 593
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
    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 613
    :catch_0
    move-exception v0

    .line 616
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
    .line 504
    const/4 v0, 0x0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    .line 507
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
    .line 518
    const/4 v0, 0x0

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 522
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

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
    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 571
    :goto_0
    return-object v0

    .line 568
    :catch_0
    move-exception v0

    .line 571
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
    .line 554
    const/4 v0, 0x0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 557
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
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

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
    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 398
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_0

    .line 399
    check-cast v0, Ljava/lang/SecurityException;

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    .line 495
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1

    .prologue
    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    :goto_0
    return-object v0

    .line 578
    :catch_0
    move-exception v0

    .line 581
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    .line 545
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 1

    .prologue
    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1155
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public verifyPendingInstall(II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1139
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/kingroot/kinguser/cca;->bWW:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1142
    :catch_0
    move-exception v0

    goto :goto_0
.end method
