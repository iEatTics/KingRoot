.class final Lcom/kingroot/kinguser/aea$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$b;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aek:J

.field final synthetic ael:I

.field final synthetic aep:Lcom/kingroot/kinguser/aea$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aea$b;JI)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingroot/kinguser/aea$7;->aep:Lcom/kingroot/kinguser/aea$b;

    iput-wide p2, p0, Lcom/kingroot/kinguser/aea$7;->aek:J

    iput p4, p0, Lcom/kingroot/kinguser/aea$7;->ael:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 194
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/kingroot/kinguser/aea$7;->aep:Lcom/kingroot/kinguser/aea$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aea$b;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-wide v2, p0, Lcom/kingroot/kinguser/aea$7;->aek:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget v1, p0, Lcom/kingroot/kinguser/aea$7;->ael:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x188da

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 207
    return-void
.end method
