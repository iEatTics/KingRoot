.class public Lcom/kingroot/kinguser/pf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private yC:Lcom/kingroot/kinguser/u;

.field private yD:Lcom/kingroot/kinguser/x;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/pf;->yD:Lcom/kingroot/kinguser/x;

    .line 47
    iput-object p2, p0, Lcom/kingroot/kinguser/pf;->yC:Lcom/kingroot/kinguser/u;

    .line 48
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/cbe;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, ""

    .line 134
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 136
    invoke-static {p2, p3}, Lcom/kingroot/kinguser/cbb;->be(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 139
    invoke-static {p2, p3}, Lcom/kingroot/kinguser/cbb;->bd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p4, p1, p2, p3}, Lcom/kingroot/kinguser/cbe;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILcom/kingroot/kinguser/cbe;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, ""

    .line 215
    packed-switch p1, :pswitch_data_0

    .line 223
    :goto_0
    return-object v0

    .line 217
    :pswitch_0
    invoke-virtual {p2, p0}, Lcom/kingroot/kinguser/cbe;->gs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/kingroot/kinguser/pf;II)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/pf;->m(II)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/pf;Lcom/kingroot/kinguser/pt;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/pf;->b(Lcom/kingroot/kinguser/pt;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    return-void
.end method

.method private b(Lcom/kingroot/kinguser/pt;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/pt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kingroot/kinguser/cbe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 155
    iget-object v0, p1, Lcom/kingroot/kinguser/pt;->mf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gk;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/pt;->mf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, v3, v3}, Lcom/kingroot/kinguser/pf;->m(II)V

    .line 211
    :goto_0
    return-void

    .line 162
    :cond_0
    iget v0, p1, Lcom/kingroot/kinguser/pt;->zd:I

    iget-object v1, p1, Lcom/kingroot/kinguser/pt;->ze:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1, p4}, Lcom/kingroot/kinguser/pf;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/cbe;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0, v3, v3}, Lcom/kingroot/kinguser/pf;->m(II)V

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/kingroot/kinguser/oz;->e(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    :cond_2
    iget v2, p1, Lcom/kingroot/kinguser/pt;->zg:I

    if-ne v2, v4, :cond_4

    .line 174
    invoke-interface {p3, v1}, Lcom/kingroot/kinguser/pv;->cj(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;

    move-result-object v0

    .line 184
    :goto_1
    iget v1, p1, Lcom/kingroot/kinguser/pt;->zd:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget v1, p1, Lcom/kingroot/kinguser/pt;->zd:I

    if-eq v1, v3, :cond_3

    .line 188
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/kingroot/kinguser/pv;->cj(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/kingroot/kinguser/cby;->success()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    if-nez v1, :cond_3

    .line 194
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cby;->success()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/pf;->m(II)V

    goto :goto_0

    .line 175
    :cond_4
    iget v2, p1, Lcom/kingroot/kinguser/pt;->zg:I

    if-nez v2, :cond_5

    .line 176
    invoke-interface {p3, v1}, Lcom/kingroot/kinguser/pv;->ck(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;

    move-result-object v0

    goto :goto_1

    .line 178
    :cond_5
    invoke-direct {p0, v3, v3}, Lcom/kingroot/kinguser/pf;->m(II)V

    goto :goto_1

    .line 208
    :cond_6
    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, Lcom/kingroot/kinguser/pf;->m(II)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    goto :goto_2

    .line 196
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private m(II)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/pf;->yC:Lcom/kingroot/kinguser/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/pf;->yD:Lcom/kingroot/kinguser/x;

    iget-wide v0, v0, Lcom/kingroot/kinguser/x;->gt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/pf;->yD:Lcom/kingroot/kinguser/x;

    iget-wide v0, v0, Lcom/kingroot/kinguser/x;->gt:J

    iget-object v2, p0, Lcom/kingroot/kinguser/pf;->yD:Lcom/kingroot/kinguser/x;

    iget-wide v2, v2, Lcom/kingroot/kinguser/x;->gu:J

    iget-object v5, p0, Lcom/kingroot/kinguser/pf;->yC:Lcom/kingroot/kinguser/u;

    iget v5, v5, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget-object v6, p0, Lcom/kingroot/kinguser/pf;->yC:Lcom/kingroot/kinguser/u;

    iget v6, v6, Lcom/kingroot/kinguser/u;->gh:I

    move v7, p1

    move v8, v4

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/kingroot/kinguser/r;

    invoke-direct {v1}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 119
    iget-object v2, v1, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/pt;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/pt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kingroot/kinguser/cbe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p1, Lcom/kingroot/kinguser/pt;->fileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    iget-object v2, p1, Lcom/kingroot/kinguser/pt;->fileName:Ljava/lang/String;

    iget v3, p1, Lcom/kingroot/kinguser/pt;->zf:I

    invoke-static {v2, v3, p4}, Lcom/kingroot/kinguser/pf;->a(Ljava/lang/String;ILcom/kingroot/kinguser/cbe;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/kingroot/kinguser/pf;->b(Lcom/kingroot/kinguser/pt;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v2

    iget-object v3, p1, Lcom/kingroot/kinguser/pt;->url:Ljava/lang/String;

    new-instance v4, Lcom/kingroot/kinguser/bzp;

    new-instance v5, Lcom/kingroot/kinguser/pg;

    invoke-direct {v5, p0, p1, p3, p4}, Lcom/kingroot/kinguser/pg;-><init>(Lcom/kingroot/kinguser/pf;Lcom/kingroot/kinguser/pt;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    invoke-direct {v4, v0, v1, v5}, Lcom/kingroot/kinguser/bzp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/bzp$a;)V

    invoke-virtual {v2, v3, p2, v4}, Lcom/kingroot/kinguser/oz;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bzp;)V

    goto :goto_0
.end method

.method public ay(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1
    return-object v0
.end method
