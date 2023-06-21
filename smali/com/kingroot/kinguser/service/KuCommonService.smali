.class public Lcom/kingroot/kinguser/service/KuCommonService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private aXt:Lcom/kingroot/kinguser/bed;

.field private bjg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    .line 138
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/service/KuCommonService$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/service/KuCommonService$1;-><init>(Lcom/kingroot/kinguser/service/KuCommonService;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->aXt:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private Q(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    .line 115
    const-string v1, ""

    .line 116
    const-string v0, ""

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 122
    invoke-static {p1}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    move v1, v2

    .line 134
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v4

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v4, v3, p1, v0, p2}, Lcom/kingroot/kinguser/ady;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 135
    return v1

    .line 126
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    move v1, v2

    .line 128
    goto :goto_0

    :cond_1
    move v3, v2

    .line 134
    goto :goto_1

    :cond_2
    move-object v0, v1

    move v1, v3

    goto :goto_0
.end method

.method private Rs()V
    .locals 6

    .prologue
    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/service/KuCommonService$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/service/KuCommonService$2;-><init>(Lcom/kingroot/kinguser/service/KuCommonService;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 188
    return-void
.end method

.method private YD()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/service/KuCommonService;->aXt:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 159
    return-void
.end method

.method private in(I)I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    return v0

    .line 98
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/service/KuCommonService;->YD()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/service/KuCommonService;->Rs()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    const-string v1, "com.shuame.rootgenius"

    const-string v2, "46C5914BCBC8BC0696E9E91CDCEC6FE8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    const-string v1, "com.shuame.mobile"

    const-string v2, "46C5914BCBC8BC0696E9E91CDCEC6FE8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    const-string v1, "com.shuame.mobile.tv"

    const-string v2, "46C5914BCBC8BC0696E9E91CDCEC6FE8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    const-string v1, "com.shuame.sprite"

    const-string v2, "46C5914BCBC8BC0696E9E91CDCEC6FE8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KuCommonService;->bjg:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqpimsecure"

    const-string v2, "00B1208638DE0FCD3E920886D658DAF6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/service/KuCommonService;->init()V

    .line 51
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Dh()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return v0

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    const-string v1, "req_type"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 62
    const-string v1, "req_CallerUid"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 64
    const-string v1, ""

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/zh;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 66
    if-eqz v4, :cond_3

    array-length v5, v4

    if-lez v5, :cond_3

    .line 67
    aget-object v0, v4, v0

    .line 69
    :goto_1
    if-eq v3, v6, :cond_2

    if-eq v2, v6, :cond_2

    .line 70
    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/service/KuCommonService;->Q(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/service/KuCommonService;->in(I)I

    .line 78
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, ""

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/kingroot/kinguser/ady;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
