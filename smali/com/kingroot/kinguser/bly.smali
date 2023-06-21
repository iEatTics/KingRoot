.class public final Lcom/kingroot/kinguser/bly;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public an:Ljava/lang/String;

.field public bAE:Ljava/lang/String;

.field public bAG:Ljava/lang/String;

.field public bAH:I


# direct methods
.method public constructor <init>(Lcom/kingx/cloudsdk/aq;)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bly;->bAE:Ljava/lang/String;

    .line 13
    iget v0, p1, Lcom/kingx/cloudsdk/aq;->size:I

    iput v0, p0, Lcom/kingroot/kinguser/bly;->bAH:I

    .line 14
    iget-object v0, p1, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/bly;->an:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/bly;->bAG:Ljava/lang/String;

    .line 16
    return-void
.end method
