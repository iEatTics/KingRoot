.class Lcom/kingroot/kinguser/bye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Fq:J

.field private bTR:J

.field private bTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/byb;",
            ">;"
        }
    .end annotation
.end field

.field private final scene:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bye;->bTR:J

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bye;->bTS:Ljava/util/List;

    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/bye;->scene:I

    .line 20
    return-void
.end method


# virtual methods
.method public ajU()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/kingroot/kinguser/bye;->bTR:J

    return-wide v0
.end method

.method public ajV()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/byb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bye;->bTS:Ljava/util/List;

    return-object v0
.end method

.method public ajW()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/bye;->scene:I

    return v0
.end method

.method public cM(J)V
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/kingroot/kinguser/bye;->bTR:J

    .line 28
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/kingroot/kinguser/bye;->Fq:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/kingroot/kinguser/bye;->bTR:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bye;->bTR:J

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bye;->Fq:J

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bye;->bTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/kingroot/kinguser/bye;->Fq:J

    .line 36
    return-void
.end method
