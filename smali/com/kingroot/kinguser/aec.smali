.class Lcom/kingroot/kinguser/aec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aeG:Lcom/kingroot/kinguser/aec;


# instance fields
.field private aeH:Lcom/kingroot/kinguser/bed;

.field private aeI:Lcom/kingroot/kinguser/bed;

.field private aeJ:Lcom/kingroot/kinguser/bed;

.field private aeK:Lcom/kingroot/kinguser/bed;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aec$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aec$1;-><init>(Lcom/kingroot/kinguser/aec;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aec;->aeH:Lcom/kingroot/kinguser/bed;

    .line 137
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aec$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aec$2;-><init>(Lcom/kingroot/kinguser/aec;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aec;->aeI:Lcom/kingroot/kinguser/bed;

    .line 193
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aec$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aec$3;-><init>(Lcom/kingroot/kinguser/aec;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aec;->aeJ:Lcom/kingroot/kinguser/bed;

    .line 242
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aec$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aec$4;-><init>(Lcom/kingroot/kinguser/aec;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aec;->aeK:Lcom/kingroot/kinguser/bed;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aec;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/aec;->tY()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aec;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/aec;->lW()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aec;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/aec;->ub()V

    return-void
.end method

.method private lW()Z
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->lB()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ady;->lG()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ady;->lI()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-static {}, Lcom/kingroot/kinguser/atd;->OU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/beh;->Zo()Lcom/kingroot/kinguser/bea;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/bea;->YZ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aye;->lB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aye;->lG()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aye;->lI()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/cbj;->akz()Lcom/kingroot/kinguser/cbj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbj;->bG(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->T(J)V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->lE()V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->lH()V

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->lF()V

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aye;->lE()V

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aye;->lH()V

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aye;->lF()V

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/beh;->Zo()Lcom/kingroot/kinguser/bea;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bea;->Za()V

    .line 173
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic rp()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/aec;->ud()V

    return-void
.end method

.method public static tX()Lcom/kingroot/kinguser/aec;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/kingroot/kinguser/aec;->aeG:Lcom/kingroot/kinguser/aec;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/kingroot/kinguser/aec;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aec;->aeG:Lcom/kingroot/kinguser/aec;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/aec;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aec;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aec;->aeG:Lcom/kingroot/kinguser/aec;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aec;->aeG:Lcom/kingroot/kinguser/aec;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private tY()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/kingroot/kinguser/aec;->lW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/kingroot/kinguser/aec;->ub()V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/aec;->ud()V

    .line 110
    :cond_0
    return-void
.end method

.method private ub()V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    .line 208
    sget-boolean v0, Lcom/kingroot/kinguser/aiz;->asU:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aec;->uc()V

    .line 211
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->tN()Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ady;->tP()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ady;->lC()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ady;->tR()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aye;->lC()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/cbj;->akz()Lcom/kingroot/kinguser/cbj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbj;->bG(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aQ(J)V

    .line 224
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->tM()V

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->tO()V

    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->lD()V

    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bO(Z)V

    .line 229
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aye;->lD()V

    goto :goto_0
.end method

.method private static ud()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->lK()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/cbj;->akz()Lcom/kingroot/kinguser/cbj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbj;->bG(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->lJ()V

    goto :goto_0
.end method


# virtual methods
.method public cI(I)V
    .locals 4

    .prologue
    .line 84
    if-lez p1, :cond_0

    .line 85
    :try_start_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/aec;->aeH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 91
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    int-to-long v2, p1

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 93
    monitor-exit v1

    .line 100
    :goto_0
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/aec;->tY()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public tW()V
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vt;->lU()V

    .line 59
    sget-boolean v0, Lcom/kingroot/kinguser/aiz;->asU:Z

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aec;->uc()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aec;->ua()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->ni()J

    move-result-wide v0

    .line 68
    const-wide/32 v4, 0x36ee800

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aec;->aeI:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public tZ()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/kingroot/kinguser/aec;->lW()Z

    .line 135
    return-void
.end method

.method public ua()V
    .locals 6

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cv()J

    move-result-wide v0

    .line 184
    const-wide/32 v4, 0x5265c00

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aec;->aeJ:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public uc()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aec;->aeK:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 240
    return-void
.end method
