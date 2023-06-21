.class public Lcom/kingroot/kinguser/aij;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile arA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/aij;->arA:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/kingroot/kinguser/aij;->arA:I

    return v0
.end method

.method private static eZ(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 97
    .line 99
    new-instance v0, Lcom/kingroot/kinguser/aij$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aij$2;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    return v0
.end method

.method private static fW(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 77
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static fX(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {p0}, Lcom/kingroot/kinguser/aij;->eZ(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic fY(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0}, Lcom/kingroot/kinguser/aij;->fX(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic jK()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/aij;->xQ()V

    return-void
.end method

.method public static xP()V
    .locals 6

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aij$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/aij$1;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 59
    return-void
.end method

.method private static xQ()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.sec.knox.bridge"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fX(Ljava/lang/String;)V

    .line 67
    const-string v0, "com.sec.knox.switchknoxI"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fX(Ljava/lang/String;)V

    .line 68
    const-string v0, "com.sec.knox.switchknoxII"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fX(Ljava/lang/String;)V

    .line 69
    const-string v0, "com.sec.knox.foldercontainer"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fX(Ljava/lang/String;)V

    .line 70
    const-string v0, "com.sec.knox.knoxsetupwizardclient"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fX(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static xR()Z
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 146
    const-string v1, "com.sec.knox.app.container"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.sec.knox.app.container"

    invoke-static {v1}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "com.sec.knox.seandroid"

    .line 147
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.sec.knox.seandroid"

    invoke-static {v1}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "com.sec.knox.store"

    .line 148
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.sec.knox.store"

    invoke-static {v1}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "com.sec.knox.containeragent"

    .line 149
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.sec.knox.containeragent"

    invoke-static {v0}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    :cond_3
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/aij;->arA:I

    .line 151
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 153
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aij;->xS()Z

    move-result v0

    goto :goto_0
.end method

.method private static xS()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 164
    const/4 v0, 0x0

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    .line 166
    const-string v3, "com.sec.knox.bridge"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.sec.knox.bridge"

    invoke-static {v3}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const-string v3, "com.sec.knox.switchknoxI"

    .line 167
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.sec.knox.switchknoxI"

    invoke-static {v3}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const-string v3, "com.sec.knox.switchknoxII"

    .line 168
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.sec.knox.switchknoxII"

    invoke-static {v3}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const-string v3, "com.sec.knox.foldercontainer"

    .line 169
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.sec.knox.foldercontainer"

    invoke-static {v3}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "com.sec.knox.knoxsetupwizardclient"

    .line 170
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    invoke-static {v2}, Lcom/kingroot/kinguser/aij;->fW(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 171
    :cond_4
    sput v1, Lcom/kingroot/kinguser/aij;->arA:I

    move v0, v1

    .line 175
    :cond_5
    return v0
.end method
