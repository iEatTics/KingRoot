.class public Lcom/kingroot/kinguser/rl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/rl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/kingroot/kinguser/rl$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/rl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/rl;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/rl$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/rl;-><init>()V

    return-void
.end method

.method private cn(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    const-string v3, "content delete --uri content://com.huawei.android.batteryspriteprovider/startupallowapps --where \"package_name=\'%s\'\""

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 120
    const-string v4, "content insert --uri content://com.huawei.android.batteryspriteprovider/startupallowapps --bind package_name:s:%s  --bind app_type:i:1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 121
    const-string v5, "content delete --uri content://com.huawei.android.batteryspriteprovider/forbiddenapps --where \"package_name=\'%s\'\""

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    .line 129
    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 132
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 138
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 136
    goto :goto_0

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method private co(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 147
    const-string v1, "content delete --uri content://com.iqoo.secure.provider.secureprovider/forbidbgstartappslist --where \"pkgname=\'%s\'\""

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    .line 157
    :cond_0
    return v0
.end method

.method public static iD()Lcom/kingroot/kinguser/rl;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/kingroot/kinguser/rl;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/rl;

    return-object v0
.end method


# virtual methods
.method public iE()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qf()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    const/4 v0, 0x4

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v4, "xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/ro;->iM()Lcom/kingroot/kinguser/ro;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ro;->k(Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0

    .line 89
    :cond_3
    const-string v2, "meizu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/rn;->cp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 93
    :cond_4
    const-string v2, "huawei"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/rl;->cn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 97
    :cond_5
    const-string v2, "vivo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/rl;->co(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 101
    :cond_6
    const-string v2, "oppo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/rp;->iN()Lcom/kingroot/kinguser/rp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/rp;->iO()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 105
    :cond_7
    const-string v2, "lenovo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/rm;->iG()Lcom/kingroot/kinguser/rm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/rm;->iH()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 109
    :cond_8
    const/4 v0, -0x1

    goto/16 :goto_0
.end method
