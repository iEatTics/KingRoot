.class final Lcom/kingroot/kinguser/aea$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aea;->a(ZJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aej:Z

.field final synthetic aek:J

.field final synthetic ael:I


# direct methods
.method constructor <init>(ZJI)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aea$1;->aej:Z

    iput-wide p2, p0, Lcom/kingroot/kinguser/aea$1;->aek:J

    iput p4, p0, Lcom/kingroot/kinguser/aea$1;->ael:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aea$1;->aej:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-wide v4, p0, Lcom/kingroot/kinguser/aea$1;->aek:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget v0, p0, Lcom/kingroot/kinguser/aea$1;->ael:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v3, 0x188da

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 75
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
