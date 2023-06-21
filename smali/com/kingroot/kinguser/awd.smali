.class public Lcom/kingroot/kinguser/awd;
.super Lcom/kingroot/kinguser/avk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/awd$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/awd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/kingroot/kinguser/awd$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awd$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awd;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avk;-><init>(I)V

    .line 46
    return-void
.end method

.method public static SG()Lcom/kingroot/kinguser/awd;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/kinguser/awd;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awd;

    return-object v0
.end method

.method public static jH(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.kinguser.console"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/eq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/eq;-><init>()V

    .line 154
    iput-object p0, v0, Lcom/kingroot/kinguser/eq;->nk:Ljava/lang/String;

    .line 155
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 158
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/eq;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/kingroot/kinguser/dj;

    .line 162
    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/kingroot/kinguser/awd;->SG()Lcom/kingroot/kinguser/awd;

    move-result-object v0

    iget-wide v2, v1, Lcom/kingroot/kinguser/dj;->nl:J

    iget-wide v4, v1, Lcom/kingroot/kinguser/dj;->nn:J

    iget-wide v6, v1, Lcom/kingroot/kinguser/dj;->nm:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/awd;->a(Ljava/lang/String;JJJ)V

    goto :goto_0
.end method

.method public static o(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    return-void

    .line 134
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-static {v0}, Lcom/kingroot/kinguser/awd;->jH(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;JJJ)V
    .locals 8

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static/range {p2 .. p7}, Lcom/kingroot/kinguser/aux;->c(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/awd;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    const/4 v1, 0x1

    .line 60
    :try_start_0
    new-instance v3, Lcom/kingroot/kinguser/bq;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bq;-><init>()V

    .line 61
    iput-object p1, v3, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 62
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    .line 63
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    .line 64
    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awd;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v4

    .line 67
    iget-object v0, v4, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 69
    iget-object v6, v3, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    iget-object v7, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    const/4 v1, 0x0

    .line 75
    iget-object v5, v3, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    iput-object v5, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    .line 76
    iget-object v5, v3, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    iput-object v5, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    .line 77
    iget-object v5, v3, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    iput-object v5, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    move v0, v1

    .line 82
    :goto_1
    if-eqz v0, :cond_3

    .line 83
    iget-object v0, v4, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awd;->Rz()V

    .line 87
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public jG(Ljava/lang/String;)Lcom/kingroot/kinguser/awd$a;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 124
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/awd;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awd;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 99
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 102
    iget-object v2, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    new-instance v2, Lcom/kingroot/kinguser/awd$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/awd$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/kingroot/kinguser/awd$a;->aRv:J

    .line 110
    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/kingroot/kinguser/awd$a;->aRw:J

    .line 111
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/kingroot/kinguser/awd$a;->aRx:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 122
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 119
    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 120
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
