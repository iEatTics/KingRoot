.class final Lcom/kingroot/kinguser/oy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/oz$a;


# instance fields
.field final synthetic yp:J

.field final synthetic yq:J

.field final synthetic yr:Lcom/kingroot/kinguser/u;


# direct methods
.method constructor <init>(JJLcom/kingroot/kinguser/u;)V
    .locals 1

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/kingroot/kinguser/oy;->yp:J

    iput-wide p3, p0, Lcom/kingroot/kinguser/oy;->yq:J

    iput-object p5, p0, Lcom/kingroot/kinguser/oy;->yr:Lcom/kingroot/kinguser/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(II)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 196
    new-instance v10, Lcom/kingroot/kinguser/r;

    invoke-direct {v10}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 198
    iget-object v11, v10, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    iget-wide v0, p0, Lcom/kingroot/kinguser/oy;->yp:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/oy;->yq:J

    iget-object v5, p0, Lcom/kingroot/kinguser/oy;->yr:Lcom/kingroot/kinguser/u;

    iget v5, v5, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget-object v6, p0, Lcom/kingroot/kinguser/oy;->yr:Lcom/kingroot/kinguser/u;

    iget v6, v6, Lcom/kingroot/kinguser/u;->gh:I

    move v7, p1

    move v8, v4

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    .line 208
    return-void
.end method
