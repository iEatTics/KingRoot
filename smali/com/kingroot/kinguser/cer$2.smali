.class Lcom/kingroot/kinguser/cer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cff$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cer;->c(Lcom/kingroot/kinguser/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYS:Lcom/kingroot/kinguser/cer;

.field final synthetic bYT:I

.field final synthetic bYU:Lcom/kingroot/kinguser/au;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cer;ILcom/kingroot/kinguser/au;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/kingroot/kinguser/cer$2;->bYS:Lcom/kingroot/kinguser/cer;

    iput p2, p0, Lcom/kingroot/kinguser/cer$2;->bYT:I

    iput-object p3, p0, Lcom/kingroot/kinguser/cer$2;->bYU:Lcom/kingroot/kinguser/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZIILjava/util/ArrayList;)V
    .locals 8
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
    const/4 v4, 0x0

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const v1, -0x1443fd0

    const/16 v2, 0x2712

    .line 463
    if-eqz p2, :cond_0

    .line 466
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "GuidCertifier"

    iget v3, p0, Lcom/kingroot/kinguser/cer$2;->bYT:I

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 467
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/cer$2;->bYT:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    .line 507
    :goto_0
    return-void

    .line 473
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move v6, v1

    .line 500
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "GuidCertifier"

    iget v3, p0, Lcom/kingroot/kinguser/cer$2;->bYT:I

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 506
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/cer$2;->bYT:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bg;

    .line 480
    if-eqz v0, :cond_3

    iget v7, v0, Lcom/kingroot/kinguser/bg;->cmd:I

    if-ne v2, v7, :cond_3

    .line 481
    iget v1, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    if-eqz v1, :cond_4

    .line 486
    iget v6, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    goto :goto_1

    .line 490
    :cond_4
    iget v0, v0, Lcom/kingroot/kinguser/bg;->jZ:I

    if-eqz v0, :cond_5

    .line 492
    const v6, -0x1450320

    .line 493
    goto :goto_1

    .line 499
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$2;->bYS:Lcom/kingroot/kinguser/cer;

    iget-object v1, p0, Lcom/kingroot/kinguser/cer$2;->bYS:Lcom/kingroot/kinguser/cer;

    invoke-static {v1}, Lcom/kingroot/kinguser/cer;->c(Lcom/kingroot/kinguser/cer;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kingroot/kinguser/cer$2;->bYU:Lcom/kingroot/kinguser/au;

    invoke-static {v0, v1, v3, v6}, Lcom/kingroot/kinguser/cer;->a(Lcom/kingroot/kinguser/cer;Ljava/lang/String;Lcom/kingroot/kinguser/au;Z)V

    goto :goto_1

    :cond_6
    move v6, v1

    goto :goto_1
.end method
