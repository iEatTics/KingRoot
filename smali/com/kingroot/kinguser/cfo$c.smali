.class abstract Lcom/kingroot/kinguser/cfo$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cff$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field final synthetic cdp:Lcom/kingroot/kinguser/cfo;

.field cds:I

.field seqNo:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cfo;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1305
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo$c;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    iput v0, p0, Lcom/kingroot/kinguser/cfo$c;->cds:I

    .line 1303
    iput v0, p0, Lcom/kingroot/kinguser/cfo$c;->seqNo:I

    .line 1306
    iput p2, p0, Lcom/kingroot/kinguser/cfo$c;->cds:I

    .line 1307
    iput p3, p0, Lcom/kingroot/kinguser/cfo$c;->seqNo:I

    .line 1308
    return-void
.end method


# virtual methods
.method public a(ZIILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v5, -0x2756cd0

    const/4 v4, -0x1

    .line 1313
    if-eqz p2, :cond_0

    .line 1314
    invoke-virtual {p0, p2, v4}, Lcom/kingroot/kinguser/cfo$c;->aB(II)V

    .line 1341
    :goto_0
    return-void

    .line 1318
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/cfo$c;->cds:I

    const/16 v1, 0x2af7

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 1319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/cfo$c;->e(Lcom/kingroot/kinguser/bg;)V

    goto :goto_0

    .line 1323
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1324
    :cond_2
    invoke-virtual {p0, v5, v4}, Lcom/kingroot/kinguser/cfo$c;->aB(II)V

    goto :goto_0

    .line 1328
    :cond_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bg;

    .line 1329
    if-eqz v0, :cond_4

    iget v2, v0, Lcom/kingroot/kinguser/bg;->cmd:I

    iget v3, p0, Lcom/kingroot/kinguser/cfo$c;->cds:I

    if-ne v2, v3, :cond_4

    .line 1330
    iget v1, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    if-nez v1, :cond_5

    iget v1, v0, Lcom/kingroot/kinguser/bg;->jZ:I

    if-nez v1, :cond_5

    .line 1331
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/cfo$c;->e(Lcom/kingroot/kinguser/bg;)V

    goto :goto_0

    .line 1334
    :cond_5
    iget v1, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    iget v0, v0, Lcom/kingroot/kinguser/bg;->jZ:I

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/cfo$c;->aB(II)V

    goto :goto_0

    .line 1340
    :cond_6
    invoke-virtual {p0, v5, v4}, Lcom/kingroot/kinguser/cfo$c;->aB(II)V

    goto :goto_0
.end method

.method protected abstract aB(II)V
.end method

.method protected abstract e(Lcom/kingroot/kinguser/bg;)V
.end method
