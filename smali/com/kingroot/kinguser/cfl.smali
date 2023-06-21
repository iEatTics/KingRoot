.class public Lcom/kingroot/kinguser/cfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cev;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfl$a;
    }
.end annotation


# instance fields
.field private bYN:Lcom/kingroot/kinguser/cff;

.field private bYt:Lcom/kingroot/kinguser/ceu;

.field private bYx:Z

.field private cau:Lcom/kingroot/kinguser/cfl$a;

.field private ccG:Lcom/kingroot/kinguser/cep;

.field private ccH:Lcom/kingroot/kinguser/cfo;

.field private ccI:Lcom/kingroot/kinguser/cfu;

.field private yb:Z


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Lcom/kingroot/kinguser/ceu;ZLcom/kingroot/kinguser/cfl$a;Lcom/kingroot/kinguser/cfo$d;Lcom/kingroot/kinguser/cff$c;Lcom/kingroot/kinguser/cff;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/cfl;->yb:Z

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/cfl;->bYx:Z

    .line 65
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfl;->yb:Z

    .line 66
    iput-object p5, p0, Lcom/kingroot/kinguser/cfl;->cau:Lcom/kingroot/kinguser/cfl$a;

    .line 67
    iput-object p3, p0, Lcom/kingroot/kinguser/cfl;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 68
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/kingroot/kinguser/cfl;->bYN:Lcom/kingroot/kinguser/cff;

    .line 69
    iput-boolean p4, p0, Lcom/kingroot/kinguser/cfl;->bYx:Z

    .line 70
    iget-boolean v1, p0, Lcom/kingroot/kinguser/cfl;->yb:Z

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lcom/kingroot/kinguser/ces;

    move-object/from16 v0, p9

    invoke-direct {v1, p2, p4, p3, v0}, Lcom/kingroot/kinguser/ces;-><init>(Landroid/content/Context;ZLcom/kingroot/kinguser/ceu;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/cfl;->ccI:Lcom/kingroot/kinguser/cfu;

    .line 72
    new-instance v1, Lcom/kingroot/kinguser/cep;

    iget-object v2, p0, Lcom/kingroot/kinguser/cfl;->ccI:Lcom/kingroot/kinguser/cfu;

    iget-boolean v3, p0, Lcom/kingroot/kinguser/cfl;->bYx:Z

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/kingroot/kinguser/cep;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfu;Z)V

    iput-object v1, p0, Lcom/kingroot/kinguser/cfl;->ccG:Lcom/kingroot/kinguser/cep;

    .line 73
    new-instance v1, Lcom/kingroot/kinguser/cfo;

    iget-object v3, p0, Lcom/kingroot/kinguser/cfl;->ccI:Lcom/kingroot/kinguser/cfu;

    iget-object v8, p0, Lcom/kingroot/kinguser/cfl;->bYN:Lcom/kingroot/kinguser/cff;

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/cfo;-><init>(Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfu;Lcom/kingroot/kinguser/cfl$a;Lcom/kingroot/kinguser/cfo$d;Lcom/kingroot/kinguser/cev;Lcom/kingroot/kinguser/cff$c;Lcom/kingroot/kinguser/cff;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/cfl;->ccH:Lcom/kingroot/kinguser/cfo;

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfl;)Lcom/kingroot/kinguser/cfl$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->cau:Lcom/kingroot/kinguser/cfl$a;

    return-object v0
.end method

.method public static a(Lcom/kingroot/kinguser/cff$d;III)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 256
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v8, v9

    .line 258
    :goto_0
    if-ge v8, v10, :cond_2

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 261
    if-nez v4, :cond_0

    .line 259
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkWharf"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    if-lez p3, :cond_1

    const-string v5, "%d/%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 269
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cff$d;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p1, Lcom/kingroot/kinguser/cff$d;->caE:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->cau:Lcom/kingroot/kinguser/cfl$a;

    invoke-interface {v0, v2, p2, p1}, Lcom/kingroot/kinguser/cfl$a;->b(ZILcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cff$d;->alP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->cau:Lcom/kingroot/kinguser/cfl$a;

    invoke-interface {v0, v2, p2, p1}, Lcom/kingroot/kinguser/cfl$a;->b(ZILcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 221
    :cond_3
    iput-boolean v3, p1, Lcom/kingroot/kinguser/cff$d;->caK:Z

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->getGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cfl;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-static {p1, v3, v0, v1}, Lcom/kingroot/kinguser/ceq;->a(Lcom/kingroot/kinguser/cff$d;ZLjava/lang/String;Lcom/kingroot/kinguser/ceu;)[B

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 233
    const/16 v1, 0xf

    array-length v2, v0

    invoke-static {p1, v1, v3, v2}, Lcom/kingroot/kinguser/cfl;->a(Lcom/kingroot/kinguser/cff$d;III)V

    .line 234
    iget-object v1, p0, Lcom/kingroot/kinguser/cfl;->ccG:Lcom/kingroot/kinguser/cep;

    new-instance v2, Lcom/kingroot/kinguser/cfl$2;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/cfl$2;-><init>(Lcom/kingroot/kinguser/cfl;Lcom/kingroot/kinguser/cff$d;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/kingroot/kinguser/cep;->a(Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V

    goto :goto_0
.end method

.method public alK()Lcom/kingroot/kinguser/cfo;
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfl;->yb:Z

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getTmsTcpManager(), not in sending process!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->ccH:Lcom/kingroot/kinguser/cfo;

    return-object v0
.end method

.method public amq()Lcom/kingroot/kinguser/cfu;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->ccI:Lcom/kingroot/kinguser/cfu;

    return-object v0
.end method

.method public declared-synchronized d(Lcom/kingroot/kinguser/cff$d;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/kingroot/kinguser/cfl;->yb:Z

    if-nez v2, :cond_0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sendData(), not in sending process!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 98
    :cond_0
    if-nez p1, :cond_2

    .line 195
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cff$d;->alP()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-boolean v1, p1, Lcom/kingroot/kinguser/cff$d;->caL:Z

    if-eqz v1, :cond_5

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->cau:Lcom/kingroot/kinguser/cfl$a;

    const/4 v1, 0x1

    const v2, -0x1c9c387

    invoke-interface {v0, v1, v2, p1}, Lcom/kingroot/kinguser/cfl$a;->b(ZILcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/cfl;->ccH:Lcom/kingroot/kinguser/cfo;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfo;->amu()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p1, Lcom/kingroot/kinguser/cff$d;->caE:I

    const/16 v3, 0x400

    if-eq v2, v3, :cond_6

    move v2, v1

    .line 126
    :goto_1
    iget v3, p1, Lcom/kingroot/kinguser/cff$d;->caE:I

    const/16 v4, 0x800

    if-eq v3, v4, :cond_4

    iget v3, p1, Lcom/kingroot/kinguser/cff$d;->caE:I

    const/16 v4, 0x200

    if-eq v3, v4, :cond_4

    iget-boolean v3, p1, Lcom/kingroot/kinguser/cff$d;->caL:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 135
    :cond_5
    if-eqz v0, :cond_7

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/kingroot/kinguser/cff$d;->caK:Z

    .line 150
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/cfl;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->getGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/cfl;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ceq;->a(Lcom/kingroot/kinguser/cff$d;ZLjava/lang/String;Lcom/kingroot/kinguser/ceu;)[B

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 155
    const/16 v1, 0xf

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, v1, v2, v3}, Lcom/kingroot/kinguser/cfl;->a(Lcom/kingroot/kinguser/cff$d;III)V

    .line 156
    iget-object v1, p0, Lcom/kingroot/kinguser/cfl;->ccG:Lcom/kingroot/kinguser/cep;

    new-instance v2, Lcom/kingroot/kinguser/cfl$1;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/cfl$1;-><init>(Lcom/kingroot/kinguser/cfl;Lcom/kingroot/kinguser/cff$d;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/kingroot/kinguser/cep;->a(Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V

    goto :goto_0

    :cond_6
    move v2, v0

    .line 125
    goto :goto_1

    .line 171
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/kingroot/kinguser/cff$d;->caK:Z

    .line 174
    iget-boolean v0, p1, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    if-eqz v0, :cond_8

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->ccH:Lcom/kingroot/kinguser/cfo;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cfo;->f(Lcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 179
    :cond_8
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cff$d;->alQ()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->ccH:Lcom/kingroot/kinguser/cfo;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cfo;->f(Lcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 193
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl;->ccH:Lcom/kingroot/kinguser/cfo;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cfo;->e(Lcom/kingroot/kinguser/cff$d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
