.class public Lcom/kingroot/kinguser/ro;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Ge:I

.field public static Gf:I

.field private static Gg:Lcom/kingroot/kinguser/ro;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xb

    sput v0, Lcom/kingroot/kinguser/ro;->Ge:I

    .line 37
    const/16 v0, 0x3f

    sput v0, Lcom/kingroot/kinguser/ro;->Gf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cq(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static iM()Lcom/kingroot/kinguser/ro;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kingroot/kinguser/ro;->Gg:Lcom/kingroot/kinguser/ro;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/ro;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ro;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ro;->Gg:Lcom/kingroot/kinguser/ro;

    .line 48
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ro;->Gg:Lcom/kingroot/kinguser/ro;

    return-object v0
.end method

.method private l(Ljava/lang/String;Z)I
    .locals 10

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 68
    .line 69
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "FLAG_DISABLE_AUTOSTART"

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/ro;->x(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 70
    const-string v5, "ro.miui.ui.version.name"

    invoke-static {v5}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    if-ne v0, v9, :cond_6

    .line 73
    const-string v0, "com.android.internal.app.IAppOpsService$Stub"

    const-string v5, "TRANSACTION_setMode"

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/ro;->x(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 75
    const-string v6, "service call %s %d i32 %d i32 %d s16 %s i32 %d"

    .line 77
    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 88
    if-ne v5, v9, :cond_2

    move v1, v3

    .line 105
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v4

    .line 86
    goto :goto_1

    .line 91
    :cond_2
    if-eq v0, v9, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v1, v4

    .line 92
    goto :goto_1

    .line 94
    :cond_4
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "appops"

    aput-object v8, v7, v1

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    aput-object p1, v7, v4

    const/4 v3, 0x5

    if-eqz p2, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ro;->cq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 94
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 97
    :cond_6
    const-string v5, "android.content.pm.IPackageManager$Stub"

    const-string v6, "TRANSACTION_setApplicationEnabledSetting"

    invoke-direct {p0, v5, v6}, Lcom/kingroot/kinguser/ro;->x(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 98
    if-ne v5, v9, :cond_7

    move v1, v3

    .line 99
    goto :goto_1

    .line 103
    :cond_7
    const-string v6, "service call %s %d s16 %s i32 %d i32 %d i32 %d s16 %s"

    .line 104
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "package"

    aput-object v8, v7, v1

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    aput-object p1, v7, v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    if-eqz p2, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v0, 0x6

    const-string v3, "com.android.settings"

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ro;->cq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_1

    .line 80
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method private m(Ljava/lang/String;Z)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x4000

    const-wide/16 v8, -0x4001

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 112
    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FLAG_DISABLE_AUTOSTART"

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/ro;->x(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 113
    const-string v4, "ro.miui.ui.version.name"

    invoke-static {v4}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    .line 118
    const-string v4, "content query --uri  content://com.lbe.security.miui.permmgr/active/%s --projection userAccept:userReject"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 119
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v2

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    iget-object v2, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 129
    const-string v3, "userAccept="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, ", userReject"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 130
    const-string v4, "userReject="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    .line 132
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 135
    if-eqz p2, :cond_3

    .line 136
    or-long/2addr v4, v10

    .line 137
    and-long/2addr v2, v8

    .line 144
    :goto_1
    const-string v6, "content update --uri  content://com.lbe.security.miui.permmgr/active/%s --bind userAccept:l:%d --bind userReject:l:%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/ro;->cq(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 139
    :cond_3
    and-long/2addr v4, v8

    .line 140
    or-long/2addr v2, v10

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 150
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private x(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 52
    invoke-static {p1}, Lcom/kingroot/kinguser/abb;->ek(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p2, v0}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v0

    .line 55
    :cond_0
    return v0
.end method


# virtual methods
.method public k(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ro;->l(Ljava/lang/String;Z)I

    move-result v0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ro;->m(Ljava/lang/String;Z)I

    move-result v1

    .line 61
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 64
    :cond_1
    return v0
.end method
