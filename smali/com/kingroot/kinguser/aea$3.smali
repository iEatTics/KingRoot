.class final Lcom/kingroot/kinguser/aea$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aea;->b(ZJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aek:J

.field final synthetic ael:I

.field final synthetic aem:Z


# direct methods
.method constructor <init>(ZJI)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aea$3;->aem:Z

    iput-wide p2, p0, Lcom/kingroot/kinguser/aea$3;->aek:J

    iput p4, p0, Lcom/kingroot/kinguser/aea$3;->ael:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aea$3;->aem:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-wide v4, p0, Lcom/kingroot/kinguser/aea$3;->aek:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget v0, p0, Lcom/kingroot/kinguser/aea$3;->ael:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v3, 0x188da

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 120
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
