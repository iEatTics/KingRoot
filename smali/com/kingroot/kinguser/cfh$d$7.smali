.class Lcom/kingroot/kinguser/cfh$d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfh$d;->a(Lcom/kingroot/kinguser/bg;Lcom/kingroot/kinguser/cfh$c;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDr:I

.field final synthetic ccs:Lcom/kingroot/kinguser/cfh$d;

.field final synthetic cct:Lcom/kingroot/kinguser/cfh$c;

.field final synthetic ccu:Ljava/lang/Integer;

.field final synthetic ccv:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh$d;Lcom/kingroot/kinguser/cfh$c;Ljava/lang/Integer;ILjava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$d$7;->ccs:Lcom/kingroot/kinguser/cfh$d;

    iput-object p2, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iput-object p3, p0, Lcom/kingroot/kinguser/cfh$d$7;->ccu:Ljava/lang/Integer;

    iput p4, p0, Lcom/kingroot/kinguser/cfh$d$7;->aDr:I

    iput-object p5, p0, Lcom/kingroot/kinguser/cfh$d$7;->ccv:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget v0, v0, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    if-lez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget v1, v1, Lcom/kingroot/kinguser/cfh$c;->bux:I

    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    iget-object v3, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget v3, v3, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    iget-object v4, p0, Lcom/kingroot/kinguser/cfh$d$7;->ccu:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/kingroot/kinguser/cfh$d$7;->aDr:I

    iget-object v6, p0, Lcom/kingroot/kinguser/cfh$d$7;->ccv:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget-object v7, v7, Lcom/kingroot/kinguser/cfh$c;->cci:[B

    invoke-interface/range {v0 .. v7}, Lcom/kingroot/kinguser/ccj;->a(IIIIII[B)V

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/cfh$c;->cbA:Lcom/kingroot/kinguser/cci;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget v1, v1, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d$7;->ccu:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/kingroot/kinguser/cfh$d$7;->aDr:I

    iget-object v4, p0, Lcom/kingroot/kinguser/cfh$d$7;->ccv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/kingroot/kinguser/cfh$d$7;->cct:Lcom/kingroot/kinguser/cfh$c;

    iget-object v5, v5, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cci;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    goto :goto_0
.end method
