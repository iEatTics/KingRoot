.class Lcom/kingroot/kinguser/aiv$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aiv;->yz()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asy:Lcom/kingroot/kinguser/aiv;

.field final synthetic asz:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aiv;J)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/kingroot/kinguser/aiv$2;->asy:Lcom/kingroot/kinguser/aiv;

    iput-wide p2, p0, Lcom/kingroot/kinguser/aiv$2;->asz:J

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 764
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    iget-wide v2, p0, Lcom/kingroot/kinguser/aiv$2;->asz:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x188d2

    invoke-virtual {v1, v2, v4, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 771
    return-void
.end method
