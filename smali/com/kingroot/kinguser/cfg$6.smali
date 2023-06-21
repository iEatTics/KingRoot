.class Lcom/kingroot/kinguser/cfg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfg;->a(IIII[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDr:I

.field final synthetic ael:I

.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;

.field final synthetic cbo:I

.field final synthetic cbq:I

.field final synthetic cbr:[B

.field final synthetic cbs:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfg;I[BIIII)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$6;->cbm:Lcom/kingroot/kinguser/cfg;

    iput p2, p0, Lcom/kingroot/kinguser/cfg$6;->cbq:I

    iput-object p3, p0, Lcom/kingroot/kinguser/cfg$6;->cbr:[B

    iput p4, p0, Lcom/kingroot/kinguser/cfg$6;->cbo:I

    iput p5, p0, Lcom/kingroot/kinguser/cfg$6;->ael:I

    iput p6, p0, Lcom/kingroot/kinguser/cfg$6;->aDr:I

    iput p7, p0, Lcom/kingroot/kinguser/cfg$6;->cbs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$6;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->c(Lcom/kingroot/kinguser/cfg;)Ljava/util/TreeMap;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$6;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->c(Lcom/kingroot/kinguser/cfg;)Ljava/util/TreeMap;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/cfg$6;->cbq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfg$a;

    .line 260
    if-nez v0, :cond_0

    .line 262
    monitor-exit v1

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfg$6;->cbr:[B

    iget-object v3, v0, Lcom/kingroot/kinguser/cfg$a;->cbz:Lcom/qq/taf/jce/JceStruct;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/ceq;->a([BLcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v2

    .line 266
    iget-object v3, v0, Lcom/kingroot/kinguser/cfg$a;->cbz:Lcom/qq/taf/jce/JceStruct;

    if-eq v3, v2, :cond_1

    .line 267
    iput-object v2, v0, Lcom/kingroot/kinguser/cfg$a;->cbz:Lcom/qq/taf/jce/JceStruct;

    .line 269
    :cond_1
    iget v2, p0, Lcom/kingroot/kinguser/cfg$6;->cbo:I

    iput v2, v0, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    .line 272
    iget-object v2, p0, Lcom/kingroot/kinguser/cfg$6;->cbm:Lcom/kingroot/kinguser/cfg;

    iget v3, p0, Lcom/kingroot/kinguser/cfg$6;->ael:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/kingroot/kinguser/cfg$6;->aDr:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/kingroot/kinguser/cfg$6;->cbs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/kingroot/kinguser/cfg;->a(Lcom/kingroot/kinguser/cfg$a;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$6;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->c(Lcom/kingroot/kinguser/cfg;)Ljava/util/TreeMap;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/cfg$6;->cbq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
