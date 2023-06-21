.class public Lcom/kingroot/kinguser/bbc;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# instance fields
.field private aSd:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    .line 87
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bbc$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bbc$2;-><init>(Lcom/kingroot/kinguser/bbc;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbc;->aSd:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private Qd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbc;->aSd:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/ajn;->zp()Lcom/kingroot/kinguser/ajn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajn;->zq()V

    .line 74
    invoke-static {v2}, Lcom/kingroot/kinguser/ajz;->dU(I)V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qD()V

    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/ail;->xT()Lcom/kingroot/kinguser/ail;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/kingroot/kinguser/ail;->p(IZ)V

    .line 81
    return-void
.end method

.method private Wd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/ajy;->zK()V

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/zl;->pu()V

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OA()V

    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OB()V

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/baw;->VY()V

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/ava;->Rg()V

    .line 121
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbc;->We()V

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->checkAppRules()V

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/aeb;->tV()Lcom/kingroot/kinguser/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeb;->tW()V

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->clearTimeOutLogs()V

    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xA()V

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/avv;->di(Z)V

    .line 139
    invoke-static {v2}, Lcom/kingroot/kinguser/alb;->fb(I)V

    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avm;->RP()V

    .line 145
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbc;->Wf()V

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahg;->refresh()V

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/bfp;->a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V

    .line 154
    :cond_0
    return-void
.end method

.method private We()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/aih;->xI()Lcom/kingroot/kinguser/aih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aih;->xJ()V

    .line 161
    return-void
.end method

.method private Wf()V
    .locals 6

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DN()J

    move-result-wide v0

    .line 167
    const-wide/32 v4, 0xa4cb800

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aaq;->dM(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bf(J)V

    goto :goto_0
.end method

.method public static Wg()V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kingroot.kinguser.ACTION_MAIN_START_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bbc;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbc;->Qd()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bbc;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbc;->Wd()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/kinguser/bbc$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/bbc$1;-><init>(Lcom/kingroot/kinguser/bbc;Landroid/content/Intent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
